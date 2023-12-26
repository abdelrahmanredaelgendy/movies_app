import 'package:dartz/dartz.dart';
import 'package:movies_app/core/error/exceptions.dart';
import 'package:movies_app/movies/data/data_source/movies_remote_data_source.dart';
import 'package:movies_app/movies/domain/entities/movies_entities.dart';
import 'package:movies_app/movies/domain/repository/base_movies_repository.dart';

class MoviesRepository extends BaseMoviesRepository {
  final BaseMoviesRemoteDataSource baseMoviesRemoteDataSource;

  MoviesRepository({required this.baseMoviesRemoteDataSource});

  @override
  Future<Either<ServerException, List<MoviesEntities>>>
      getNowPlayingMovies() async {
    try {
      final result = await baseMoviesRemoteDataSource.getNowPlayingMovies();
      return right(result.cast<MoviesEntities>());
    } on ServerException catch (failure) {
      return left(
          ServerException(errorMessageModel: failure.errorMessageModel));
    }
  }

  @override
  Future<Either<ServerException, List<MoviesEntities>>>
      getPopularMovies() async {
    try {
      final result = await baseMoviesRemoteDataSource.getPopularMovies();
      return right(result.cast<MoviesEntities>());
    } on ServerException catch (failure) {
      return left(
          ServerException(errorMessageModel: failure.errorMessageModel));
    }
  }

  @override
  Future<Either<ServerException, List<MoviesEntities>>>
      getTopRatedMovies() async {
    try {
      final result = await baseMoviesRemoteDataSource.getTopRatedMovies();
      return right(result.cast<MoviesEntities>());
    } on ServerException catch (failure) {
      return left(
          ServerException(errorMessageModel: failure.errorMessageModel));
    }
  }
}
