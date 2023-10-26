import 'package:filmler_bloc/data/filmler.dart';
import 'package:filmler_bloc/repo/filmler_dao_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<List<Filmler>> {
  HomeCubit() : super(<Filmler>[]);
  var repo = FilmlerDaoRepository();
  Future<void> getFilmler() async {
    var films = await repo.getFilmler();
    emit(films);
  }
}
