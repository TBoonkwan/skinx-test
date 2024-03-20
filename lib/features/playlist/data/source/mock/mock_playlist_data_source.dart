import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:skinx_test/features/playlist/data/model/create/create_new_playlist_request.dart';
import 'package:skinx_test/features/playlist/data/model/detail/playlist_detail_request.dart';
import 'package:skinx_test/features/playlist/data/model/detail/playlist_detail_response.dart';
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

  @override
  Future createNewPlaylist({required CreateNewPlaylistRequest request}) async {
    return;
  }

  @override
  Future<PlaylistDetailResponse> getPlaylistDetail({
    required PlaylistDetailRequest request,
  }) async{
    final String response = await rootBundle.loadString(
      'assets/mock/playlist_detail.json',
    );

    final Map<String, dynamic> data = jsonDecode(response);
    return PlaylistDetailResponse.fromJson(data);
  }
}
