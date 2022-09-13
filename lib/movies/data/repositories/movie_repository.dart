import 'package:dartz/dartz.dart';
import 'package:movie_app_with_clean_architecture/core/error/exceptions.dart';
import 'package:movie_app_with_clean_architecture/movies/data/data_sources/movie_remote_datasource.dart';
import '../../domain/entities/movie.dart';
import '../../domain/repositories/base_movie_repository.dart';

class MovieRepository implements BaseMovieRepository {
  final BaseMovieRemoteDataSource baseMovieRemoteDataSource;

  MovieRepository(this.baseMovieRemoteDataSource);

  @override
  Future<Either<ServerException, List<Movie>>> getNowPlayingMovies() async {
    final result = await baseMovieRemoteDataSource.getNowPlayingMovies();
    try {
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerException(errorMessageModel: e.errorMessageModel));
    }
  }

  @override
  Future<Either<ServerException, List<Movie>>> getPopularMovies() async {
    final result = await baseMovieRemoteDataSource.getPopularMovies();
    try {
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerException(errorMessageModel: e.errorMessageModel));
    }
  }

  @override
  Future<Either<ServerException, List<Movie>>> getTopRatedMovies() async {
    final result = await baseMovieRemoteDataSource.getTopRatedMovies();
    try {
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerException(errorMessageModel: e.errorMessageModel));
    }
  }
}
