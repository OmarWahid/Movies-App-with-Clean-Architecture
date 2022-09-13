import 'package:dartz/dartz.dart';
import 'package:movie_app_with_clean_architecture/movies/domain/entities/movie.dart';
import '../../../core/error/exceptions.dart';

abstract class BaseMovieRepository {
  Future<Either<ServerException ,List<Movie>>> getNowPlayingMovies();

  Future<Either<ServerException ,List<Movie>>> getPopularMovies();

  Future<Either<ServerException ,List<Movie>>> getTopRatedMovies();
}
