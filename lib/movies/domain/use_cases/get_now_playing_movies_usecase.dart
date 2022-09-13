import 'package:dartz/dartz.dart';
import '../../../core/error/exceptions.dart';
import '../entities/movie.dart';
import '../repositories/base_movie_repository.dart';

class GetNowPlayingMoviesUseCase {
  final BaseMovieRepository baseMovieRepository;

  GetNowPlayingMoviesUseCase(this.baseMovieRepository);

  Future<Either<ServerException, List<Movie>>> execute() async {
    return await baseMovieRepository.getNowPlayingMovies();
  }
}
