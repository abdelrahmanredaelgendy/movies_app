import 'package:dartz/dartz.dart';
import 'package:movies_app/core/error/exceptions.dart';
import 'package:movies_app/movies/domain/entities/movies_entities.dart';

abstract class BaseMoviesRepository {
  Future<Either<ServerException, List<MoviesEntities>>> getNowPlayingMovies();

  Future<Either<ServerException, List<MoviesEntities>>> getPopularMovies();

  Future<Either<ServerException, List<MoviesEntities>>> getTopRatedMovies();
}
