import 'package:dio/dio.dart';
import 'package:flutter_application_1/service/dio_servirce.dart';

class ImplementaDio implements DioService {
  @override
  Dio getDio() {
    return Dio(
      BaseOptions(baseUrl: 'https://api.themoviedb.org/4/', headers: {
        'content-type': 'application/json;charset=utf-8',
        'authorization':
            'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJmMTY4NzY0NjAyYzY0Yzg1ZjFkNDA3OGQ5MWNmMjYwMyIsInN1YiI6IjYyNDY0YzgyMzM0NGM2MDBhNWQ1ZGY4YSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ._ZIoeZLUaVIkgGkcpsawNCuqnTgTwgf7o6IjB8hxsBg',
      }),
    );
  }
}
