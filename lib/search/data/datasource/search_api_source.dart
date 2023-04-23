import 'package:dio/dio.dart';
import 'package:royal_gambit/search/data/models/search_result_item.dart';

import '../../../core/data/error/exceptions.dart';
import '../../../core/data/network/error_message_model.dart';

abstract class SearchApiSourceInteface {
  Future<List<SearchResultItem>> search(String name);
}

class SearchApiSource extends SearchApiSourceInteface {
  @override
  Future<List<SearchResultItem>> search(String name) async {
    final response = await Dio()
        .post('https://fuksiarz.pl/rest/search/events/quick-search', data: {
      "areas": ["PREMATCH_EVENT"],
      "languageCode": "pl",
      "limit": "5",
      "mergeLanguages": 2,
      "modes": ["INFIX", "PREFIX"],
      "pattern": name
    });
    if (response.statusCode == 200) {
      return List<SearchResultItem>.from(
        (response.data['data'] as List).map(
          (e) => SearchResultItem.fromJson(e),
        ),
      );
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }
}
