import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get_storage/get_storage.dart';
import 'package:skinx_test/features/playlist/data/constants/playlist_constants.dart';
import 'package:skinx_test/features/playlist/data/model/playlist_request.dart';
import 'package:skinx_test/features/playlist/data/model/playlist_response.dart';
import 'package:skinx_test/features/playlist/data/source/playlist_data_source.dart';

class MockPlaylistDataSource extends PlaylistDataSource {
  @override
  Future<PlaylistResponse> getPlaylist({
    required PlaylistRequest request,
  }) async {
    final storage = GetStorage();
    final Map<String, dynamic> data;
    if (storage.hasData(PlaylistKeyConstants.PlaylistKey)) {
      data = storage.read(PlaylistKeyConstants.PlaylistKey);
    } else {
      final String response = await rootBundle.loadString(
        'assets/mock/get_playlist_list.json',
      );
      data = jsonDecode(response);
      storage.write(PlaylistKeyConstants.PlaylistKey, data);
    }
    return PlaylistResponse.fromJson(data);
  }
}
