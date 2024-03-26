import 'dart:math';

import 'package:meu_versiculo_diario/verse_generator/domain/models/versiculo.dart';
import 'package:meu_versiculo_diario/verse_generator/domain/repositories/versiculo_repository.dart';

class VersiculoService {
  final VersiculoRepository versiculoRepository;

  VersiculoService({required this.versiculoRepository});

  List<Versiculo> getTodosVersiculos() {
    final listaVersiculos = versiculoRepository.getTodosVersiculos();
    return listaVersiculos;
  }

  Versiculo getVersiculoAleatorio() {
    // Obtém versiculos
    final listaTodosVersiculos = getTodosVersiculos();
    // Gera um índice randomico
    final indexRandom = Random().nextInt(listaTodosVersiculos.length);
    // Retorna versiculo correspondente na lista
    return listaTodosVersiculos[indexRandom];
  }
}
