import 'package:flutter/cupertino.dart';
import 'package:skinx_test/features/album/config/album_route.dart';
import 'package:skinx_test/features/playlist/config/playlist_route.dart';
import 'package:skinx_test/features/search/config/search_route.dart';

class AppRoute {
  final Map<String, WidgetBuilder> _screens = {};

  AppRoute() {
    _screens
      ..addAll(PlaylistRoute.screens)
      ..addAll(AlbumRoute.screens)
      ..addAll(SearchRoute.screens);
  }

  get screens => _screens;
}
