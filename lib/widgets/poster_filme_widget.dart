import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/model_filmes.dart';
import 'package:flutter_application_1/utils/filmes.utils.dart';

class PosterFilme extends StatelessWidget {
  final Movie filme;
  const PosterFilme({Key? key, required this.filme}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 250,
        decoration: const BoxDecoration(color: Colors.black38),
        child: Row(
          children: [
            Image.network(PegaFilme.REQUEST_IMG(filme.posterPath)),
            Expanded(
              child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Spacer(),
                      Text(
                        filme.title,
                        style: Theme.of(context).textTheme.headline6,
                        softWrap: true,
                        overflow: TextOverflow.visible,
                      ),
                      const Spacer(),
                    ],
                  )),
            )
          ],
        ));
  }
}
