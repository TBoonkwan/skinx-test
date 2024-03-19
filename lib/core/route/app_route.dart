import 'package:flutter/cupertino.dart';
import 'package:skinx_test/features/playlist/config/playlist_route.dart';

class AppRoute {
  final Map<String, WidgetBuilder> _screens = {};

  AppRoute() {
    _screens..addAll(PlaylistRoute.screens);
  }

  get screens => _screens;
}
