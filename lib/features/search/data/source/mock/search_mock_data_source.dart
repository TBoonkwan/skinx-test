import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:skinx_test/features/search/data/model/search_request.dart';
import 'package:skinx_test/features/search/data/model/search_response.dart';
import 'package:skinx_test/features/search/data/source/playlist_data_source.dart';

class MockSearchDataSource extends SearchDataSource {
  @override
  Future<MySearchResponse> getSearch({
    required MySearchRequest request,
  }) async {
    final String response = await rootBundle.loadString(
      'assets/mock/get_Search_list.json',
    );

    final Map<String, dynamic> data = jsonDecode(response);
    return MySearchResponse.fromJson(data);
  }
}
