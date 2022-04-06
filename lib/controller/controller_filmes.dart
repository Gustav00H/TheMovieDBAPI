import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/models/model_filmes.dart';
import 'package:flutter_application_1/repositories/repositorios_filmes.dart';

class ControllerFilme {
  final RepositorioFilme _repositorioFilme;
  ControllerFilme(this._repositorioFilme) {
    fetch();
  }

  ValueNotifier<Movies?> filmes = ValueNotifier<Movies?>(null);
  Movies? _filmecontrole;

  input(String valor) {
    List<Movie> listafilme = _filmecontrole!.listMovies
        .where(
          (element) => element.toString().toLowerCase().contains(
                valor.toLowerCase(),
              ),
        )
        .toList();
    filmes.value = filmes.value!.copyWith(listMovies: listafilme);
  }

  fetch() async {
    filmes.value = await _repositorioFilme.getMovie();
    _filmecontrole = filmes.value;
  }
}
