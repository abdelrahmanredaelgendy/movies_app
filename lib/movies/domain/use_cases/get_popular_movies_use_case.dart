import 'package:dartz/dartz.dart';
import 'package:movies_app/core/error/exceptions.dart';
import 'package:movies_app/movies/domain/entities/movies_entities.dart';
import 'package:movies_app/movies/domain/repository/base_movies_repository.dart';

class GetPopularMoviesUseCase {
  final BaseMoviesRepository baseMoviesRepository;

  const GetPopularMoviesUseCase({required this.baseMoviesRepository});

  Future<Either<ServerException, List<MoviesEntities>>> execute() async {
    return await baseMoviesRepository.getPopularMovies();
  }
}
