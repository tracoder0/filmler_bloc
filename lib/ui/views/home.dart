import 'package:filmler_bloc/data/filmler.dart';
import 'package:filmler_bloc/ui/cubits/home_cubit.dart';
import 'package:filmler_bloc/ui/views/detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<HomeCubit>().getFilmler();
    return Scaffold(
      appBar: AppBar(title: const Text("Filmler")),
      body: BlocBuilder<HomeCubit, List<Filmler>>(
        builder: (context, allFilmler) {
          if (allFilmler.isNotEmpty) {
            return GridView.builder(
              itemCount: allFilmler.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 1 / 1.8),
              itemBuilder: (context, index) {
                var film = allFilmler[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Detail(film: film),
                        ));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          "images/${film.resim}",
                          fit: BoxFit.contain,
                          height: 150,
                        ),
                        Text("${film.filmAdi}"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("${film.fiyat} ₺"),
                            ElevatedButton(
                                onPressed: () {},
                                child: const Icon(Icons.add_box_rounded))
                          ],
                        )
                      ],
                    )),
                  ),
                );
              },
            );
          } else {
            return Center(
              child: const Text("Gösterilecek Film Bulunamadı"),
            );
          }
        },
      ),
    );
  }
}
