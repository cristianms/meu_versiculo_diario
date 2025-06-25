import 'package:flutter/material.dart';
import 'package:meu_versiculo_diario/verse_generator/domain/models/versiculo.dart';
import 'package:share_plus/share_plus.dart';

/// Widget que exibe o versículo atual em um Card
class VerseCardWidget extends StatefulWidget {
  const VerseCardWidget({
    super.key,
    required this.verse,
  });

  final Versiculo? verse;

  @override
  State<VerseCardWidget> createState() => _VerseCardWidgetState();
}

class _VerseCardWidgetState extends State<VerseCardWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: Column(
                children: [
                  Text(
                    widget.verse?.texto ?? '',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        '${widget.verse?.livro} ${widget.verse?.capitulo} : ${widget.verse?.versiculo}',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        // Adiciona botão para compartilhar o versículo, com texto e ícone
        ElevatedButton.icon(
          onPressed: () async {
            final shareParams = ShareParams(
              title: 'Compartilhar Versículo',
              subject: 'Versículo do Dia',
              text: '${widget.verse?.texto}\n\n${widget.verse?.livro} ${widget.verse?.versiculo}',
            );
            await SharePlus.instance.share(shareParams);
          },
          icon: const Icon(Icons.share),
          label: const Text('Compartilhar Versículo'),
        ),
      ],
    );
  }
}
