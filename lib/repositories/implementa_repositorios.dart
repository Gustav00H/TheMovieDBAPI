import 'package:dio/dio.dart';
import 'package:flutter_application_1/models/model_filmes.dart';
import 'package:flutter_application_1/repositories/repositorios_filmes.dart';
import 'package:flutter_application_1/service/dio_servirce.dart';
import 'package:flutter_application_1/utils/filmes.utils.dart';

class ImplementaRepFilme implements RepositorioFilme {
  final DioService _dioService;
  ImplementaRepFilme(this._dioService);

  @override
  Future<Movies> getMovie() async {
    Response<dynamic> result =
        await _dioService.getDio().get(PegaFilme.REQUEST_MOVIE_LIST);
    return Movies.fromJson(result.data);
  }
}
