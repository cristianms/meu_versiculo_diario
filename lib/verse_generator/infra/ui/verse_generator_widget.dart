import 'package:flutter/material.dart';
import 'package:meu_versiculo_diario/verse_generator/infra/ui/verse_card_widget.dart';
import 'package:meu_versiculo_diario/verse_generator/aplication/impl/verses_service.dart';
import 'package:meu_versiculo_diario/verse_generator/domain/models/versiculo.dart';
import 'package:meu_versiculo_diario/verse_generator/infra/repositories/verses_repository_mock.dart';
import 'package:meu_versiculo_diario/verse_generator/infra/ui/extensions/theme_context_extension.dart';

class VerseGeneratorWidget extends StatefulWidget {
  const VerseGeneratorWidget({
    super.key,
  });

  @override
  State<VerseGeneratorWidget> createState() => _VerseGeneratorWidgetState();
}

class _VerseGeneratorWidgetState extends State<VerseGeneratorWidget> {
  /// Inicializa o service
  final versiculoService = VersesService(versiculoRepository: VersesRepositoryMock());

  @override
  Widget build(BuildContext context) {
    // Obtém um versículo aleatório
    Versiculo versiculoAtual = versiculoService.getVersiculoAleatorio();
    // Monta o widget com o versículo atual
    return Stack(
      children: [
        // Card do versículo
        Positioned.fill(
          child: Container(
            color: Theme.of(context).colorScheme.primaryContainer,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: VerseCardWidget(verse: versiculoAtual),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 16, // altura do banner + margem
          right: 16,
          child: RawMaterialButton(
            shape: const StadiumBorder(),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            fillColor: context.colorScheme.onPrimary,
            onPressed: () {
              setState(() => versiculoAtual = versiculoService.getVersiculoAleatorio());
            },
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(Icons.refresh, color: Colors.black87),
                SizedBox(width: 6),
                Text('Pegar Novo Versículo'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
