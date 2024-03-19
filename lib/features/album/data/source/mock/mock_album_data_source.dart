import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:skinx_test/features/album/data/source/album_data_source.dart';
import 'package:skinx_test/features/search/data/model/search_request.dart';
import 'package:skinx_test/features/search/data/model/search_response.dart';

class MockAlbumDataSource extends AlbumDataSource {
  @override
  Future<SearchResponse> getAlbumDetail({
    required MySearchRequest request,
  }) async {
    final String response = await rootBundle.loadString(
      'assets/mock/album.json',
    );

    final Map<String, dynamic> data = jsonDecode(response);
    return SearchResponse.fromJson(data);
  }
}
