import 'package:filmler_bloc/data/filmler.dart';
import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  Filmler film;
  Detail({required this.film});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(film.filmAdi)),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("images/${film.resim}"),
          Text(
            "Fiyat ${film.fiyat}",
            style: TextStyle(fontSize: 50),
          )
        ],
      )),
    );
  }
}
