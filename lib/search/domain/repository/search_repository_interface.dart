import 'package:royal_gambit/core/data/error/failure.dart';
import 'package:royal_gambit/search/data/models/search_result_item.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepositoryInterface {
  Future<Either<Failure, List<SearchResultItem>>> search(String name);
}
