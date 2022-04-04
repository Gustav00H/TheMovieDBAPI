import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/pagina_inicial.dart';

void main() {
  runApp(const TheMovieDB());
}

class TheMovieDB extends StatelessWidget {
  const TheMovieDB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: const PaginaInicial(),
    );
  }
}
