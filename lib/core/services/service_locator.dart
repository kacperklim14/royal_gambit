import 'package:get_it/get_it.dart';
import 'package:royal_gambit/search/data/datasource/search_api_source.dart';
import 'package:royal_gambit/search/data/repository/search_repository.dart';
import 'package:royal_gambit/search/domain/repository/search_repository_interface.dart';
import 'package:royal_gambit/search/domain/usecases/search_usecase.dart';
import 'package:royal_gambit/search/presentation/controllers/search_bloc/bloc/search_bloc.dart';

final sl = GetIt.instance;

class ServiceLocator {
  static void init() {
    sl.registerSingleton(SearchApiSource());
    sl.registerSingleton<SearchRepositoryInterface>(SearchRepository(sl()));
    sl.registerSingleton(SearchUseCase(sl()));
    sl.registerFactory(() => SearchBloc(sl()));
  }
}
