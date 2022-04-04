import 'package:flutter_application_1/models/model_filmes.dart';

abstract class RepositorioFilme {
  Future<Movies> getMovie();
}
