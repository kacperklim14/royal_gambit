import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:royal_gambit/search/data/datasource/search_api_source.dart';
import 'package:royal_gambit/search/domain/repository/search_repository_interface.dart';

import '../../../core/data/error/exceptions.dart';
import '../../../core/data/error/failure.dart';
import '../models/search_result_item.dart';

class SearchRepository extends SearchRepositoryInterface {
  final SearchApiSource _baseSearchApiSource;

  SearchRepository(this._baseSearchApiSource);

  @override
  Future<Either<Failure, List<SearchResultItem>>> search(String name) async {
    try {
      final result = await _baseSearchApiSource.search(name);
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    } on DioError catch (failure) {
      return Left(ServerFailure(failure.message ?? ''));
    }
  }
}
