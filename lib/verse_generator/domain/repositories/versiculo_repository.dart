import 'package:meu_versiculo_diario/verse_generator/domain/models/versiculo.dart';

abstract class VersiculoRepository {
  List<Versiculo> getTodosVersiculos();
}