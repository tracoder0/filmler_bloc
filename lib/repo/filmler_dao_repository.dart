import 'package:filmler_bloc/data/filmler.dart';

class FilmlerDaoRepository {
  var listfilmler = <Filmler>[
    Filmler(id: 1, filmAdi: "Asi Prenses", resim: "asiprenses.jpg", fiyat: 40),
    Filmler(id: 2, filmAdi: "Avatar", resim: "avatar.jpg", fiyat: 35),
    Filmler(
        id: 3,
        filmAdi: "Hızlı ve Öfkeli XII",
        resim: "hizliveofkeli.jpg",
        fiyat: 60),
    Filmler(
        id: 4, filmAdi: "Maskeli Balo", resim: "maskelibalo.jpg", fiyat: 75),
    Filmler(id: 5, filmAdi: "Sürü", resim: "suru.jpg", fiyat: 43),
    Filmler(id: 6, filmAdi: "UnCharted", resim: "uncharted.jpg", fiyat: 99),
    Filmler(id: 7, filmAdi: "Venom", resim: "venom.jpg", fiyat: 55),
    Filmler(
        id: 8,
        filmAdi: "Yaşasın Wakanda",
        resim: "yasasinwakanda.jpg",
        fiyat: 23),
  ];
  Future<List<Filmler>> getFilmler() async {
    return listfilmler;
  }
}
