import 'package:get_it/get_it.dart';
import 'package:movie_app_with_clean_architecture/movies/data/data_sources/movie_remote_datasource.dart';
import 'package:movie_app_with_clean_architecture/movies/domain/repositories/base_movie_repository.dart';
import 'package:movie_app_with_clean_architecture/movies/domain/use_cases/get_now_playing_movies_usecase.dart';
import 'package:movie_app_with_clean_architecture/movies/domain/use_cases/get_popular_movies_usecase.dart';
import 'package:movie_app_with_clean_architecture/movies/domain/use_cases/get_top_rated_movies_usecase.dart';
import 'package:movie_app_with_clean_architecture/movies/presentation/controller/movie_bloc.dart';
import '../../movies/data/repositories/movie_repository.dart';

final sl = GetIt.instance;

class ServicesLocator {
  void init() {
    /// BLOC
    sl.registerFactory(() => MovieBloc(sl(), sl(), sl()));

    /// USE CASES
    sl.registerLazySingleton(() => GetNowPlayingMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetPopularMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetTopRatedMoviesUseCase(sl()));

    /// REPOSITORY
    sl.registerLazySingleton<BaseMovieRepository>(() => MovieRepository(sl()));

    /// DATA SOURCE
    sl.registerLazySingleton<BaseMovieRemoteDataSource>(
        () => MovieRemoteDataSource());
  }
}
