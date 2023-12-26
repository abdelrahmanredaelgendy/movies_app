import 'package:dartz/dartz.dart';
import 'package:movies_app/core/error/exceptions.dart';
import 'package:movies_app/movies/domain/entities/movies_entities.dart';
import 'package:movies_app/movies/domain/repository/base_movies_repository.dart';

class GetTopRatedMoviesUseCase {
  final BaseMoviesRepository baseMoviesRepository;

  const GetTopRatedMoviesUseCase({required this.baseMoviesRepository});

  Future<Either<ServerException, List<MoviesEntities>>> execute() async {
    return await baseMoviesRepository.getTopRatedMovies();
  }
}
