import 'package:meu_versiculo_diario/verse_generator/domain/models/versiculo.dart';

abstract class VersesRepository {
  List<Versiculo> getAllVerses();
}