import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/controller_filmes.dart';
import 'package:flutter_application_1/models/model_filmes.dart';
import 'package:flutter_application_1/repositories/implementa_repositorios.dart';
import 'package:flutter_application_1/service/implementa_dio.dart';
import 'package:flutter_application_1/widgets/poster_filme_widget.dart';

class PaginaInicial extends StatefulWidget {
  const PaginaInicial({Key? key}) : super(key: key);

  @override
  State<PaginaInicial> createState() => _PaginaInicialState();
}

class _PaginaInicialState extends State<PaginaInicial> {
  final ControllerFilme _controller =
      ControllerFilme(ImplementaRepFilme(ImplementaDio()));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Text(
                'Filmes',
                style: Theme.of(context).textTheme.headline2,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 40,
                  decoration: const BoxDecoration(color: Colors.black87),
                  child: TextField(
                    style: Theme.of(context).textTheme.headline6,
                    onChanged: _controller.input,
                  ),
                ),
              ),
              ValueListenableBuilder<Movies?>(
                valueListenable: _controller.filmes,
                builder: (_, filmes, __) {
                  return filmes != null
                      ? ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: filmes.listMovies.length,
                          itemBuilder: (_, idx) =>
                              PosterFilme(filme: filmes.listMovies[idx]),
                          separatorBuilder: (_, __) => const Divider(),
                        )
                      : Container();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
