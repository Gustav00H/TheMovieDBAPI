import 'package:flutter_application_1/models/model_filmes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/filmes.utils.dart';

class PaginaDetalhes extends StatelessWidget {
  final Movie filme;
  const PaginaDetalhes({Key? key, required this.filme}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(filme.title)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .5,
              width: MediaQuery.of(context).size.width,
              child: Image.network(PegaFilme.REQUEST_IMG(filme.posterPath)),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Sinopse'.toUpperCase(),
              style: const TextStyle(
                color: Colors.grey,
                decoration: TextDecoration.none,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              filme.overview,
              style: const TextStyle(
                color: Colors.white,
                decoration: TextDecoration.none,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Data de lançamento'.toUpperCase(),
                      style: const TextStyle(
                        color: Colors.grey,
                        decoration: TextDecoration.none,
                        fontSize: 14,
                      ),
                    ),
                    Text(filme.releaseDate)
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Popularidade'.toUpperCase(),
                      style: const TextStyle(
                        color: Colors.grey,
                        decoration: TextDecoration.none,
                        fontSize: 14,
                      ),
                    ),
                    Text(filme.popularity.toString())
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Votos'.toUpperCase(),
                      style: const TextStyle(
                        color: Colors.grey,
                        decoration: TextDecoration.none,
                        fontSize: 14,
                      ),
                    ),
                    Text(filme.voteAverage.toString())
                  ],
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
