import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/models/model_filmes.dart';
import 'package:flutter_application_1/repositories/repositorios_filmes.dart';

class ControllerFilme {
  final RepositorioFilme _repositorioFilme;
  ControllerFilme(this._repositorioFilme) {
    fetch();
  }

  ValueNotifier<Movies?> filmes = ValueNotifier<Movies?>(null);

  fetch() async {
    filmes.value = await _repositorioFilme.getMovie();
  }
}
