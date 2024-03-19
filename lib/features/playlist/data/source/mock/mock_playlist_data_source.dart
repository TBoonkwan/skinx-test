import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:skinx_test/features/playlist/data/model/my_playlist_request.dart';
import 'package:skinx_test/features/playlist/data/model/my_playlist_response.dart';
import 'package:skinx_test/features/playlist/data/source/playlist_data_source.dart';

class MockPlaylistDataSource extends PlaylistDataSource {
  @override
  Future<MyPlaylistResponse> getPlaylist({
    required MyPlaylistRequest request,
  }) async {
    final String response = await rootBundle.loadString(
      'assets/mock/get_playlist_list.json',
    );

    final Map<String, dynamic> data = jsonDecode(response);
    return MyPlaylistResponse.fromJson(data);
  }
}
