import 'package:flutter/material.dart';
import 'package:meu_versiculo_diario/privacy_police/infra/ui/privacy_police_page.dart';
import 'package:meu_versiculo_diario/verse_generator/aplication/impl/verses_service.dart';
import 'package:meu_versiculo_diario/verse_generator/domain/models/versiculo.dart';
import 'package:meu_versiculo_diario/verse_generator/infra/repositories/verses_repository_mock.dart';
import 'package:meu_versiculo_diario/verse_generator/infra/ui/extensions/theme_context_extension.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  /// Inicializa o service
  final versiculoService = VersesService(versiculoRepository: VersesRepositoryMock());
  
  @override
  void initState() {
    super.initState();
  }

  // Future<void> _consulta() async {
  //   final db = BaseDados();
  //   final testament = await db.query('testament');
  //   final books = await db.query('books');
  //   final verses = await db.query('verses');
  //   print('testament:');
  //   print(testament);
  //   print('books:');
  //   print(books);
  //   print('verses:');
  //   print(verses);
  // }

  @override
  Widget build(BuildContext context) {
    Versiculo versiculoAtual = versiculoService.getVersiculoAleatorio();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Versículo Diário'),
        actions: [
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(
                  value: 'privacy_policy',
                  child: Text('Política de privacidade'),
                ),
              ];
            },
            onSelected: (value) async {
              if (value == 'privacy_policy') {
                // Aqui você pode adicionar a lógica para abrir a tela de política de privacidade
                await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PrivacyPolicePage()),
                );
              }
            },
          ),
        ],
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
