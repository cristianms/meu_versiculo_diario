import 'dart:math';

import 'package:meu_versiculo_diario/verse_generator/domain/models/versiculo.dart';
import 'package:meu_versiculo_diario/verse_generator/domain/repositories/verses_repository.dart';

class VersesService {
  final VersesRepository versiculoRepository;

  VersesService({required this.versiculoRepository});

  List<Versiculo> getAllVerses() {
    final listaVersiculos = versiculoRepository.getAllVerses();
    return listaVersiculos;
  }

  Versiculo getVersiculoAleatorio() {
    // Obtém versiculos
    final listaTodosVersiculos = getAllVerses();
    // Gera um índice randomico
    final indexRandom = Random().nextInt(listaTodosVersiculos.length);
    // Retorna versiculo correspondente na lista
    return listaTodosVersiculos[indexRandom];
  }
}
