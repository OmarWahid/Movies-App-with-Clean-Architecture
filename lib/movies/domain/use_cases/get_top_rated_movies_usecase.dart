import 'package:dartz/dartz.dart';

import '../../../core/error/exceptions.dart';
import '../entities/movie.dart';
import '../repositories/base_movie_repository.dart';

class GetTopRatedMoviesUseCase {
  final BaseMovieRepository baseMovieRepository;

  GetTopRatedMoviesUseCase(this.baseMovieRepository);

  Future<Either<ServerException ,List<Movie>>> execute() async {
    return await baseMovieRepository.getTopRatedMovies();
  }
}
