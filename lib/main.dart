import 'package:flutter/material.dart';
import 'package:meu_versiculo_diario/verse_generator/aplication/impl/versiculo_service.dart';
import 'package:meu_versiculo_diario/verse_generator/domain/models/versiculo.dart';
import 'package:meu_versiculo_diario/verse_generator/infra/repositories/versiculo_repository_mock.dart';
import 'package:meu_versiculo_diario/verse_generator/infra/ui/extensions/theme_context_extension.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu Versículo Diário',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /// Inicializa o service
  final VersiculoService versiculoService = VersiculoService(versiculoRepository: VersiculoRepositoryMock());

  @override
  Widget build(BuildContext context) {
    Versiculo versiculoAtual = versiculoService.getVersiculoAleatorio();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Versículo Diário'),
      ),
      body: Container(
        color: Theme.of(context).colorScheme.primaryContainer,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            versiculoAtual.texto,
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '${versiculoAtual.livro} ${versiculoAtual.versiculo}',
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: RawMaterialButton(
        shape: const StadiumBorder(),
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        fillColor: context.colorScheme.inversePrimary,
        onPressed: () {
          setState(() => versiculoAtual = versiculoService.getVersiculoAleatorio());
        },
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(
              Icons.gesture_rounded,
              color: Colors.white,
            ),
            SizedBox(width: 6),
            Text('Novo Versículo'),
          ],
        ),
      ),
    );
  }
}
