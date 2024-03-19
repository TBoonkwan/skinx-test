import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skinx_test/features/album/config/album_provider.dart';
import 'package:skinx_test/features/playlist/config/playlist_provider.dart';
import 'package:skinx_test/features/search/config/search_provider.dart';

class AppProvider {
  final List<BlocProvider> _provider = [];

  AppProvider() {
    _provider
      ..addAll(PlaylistProvider.providers)
      ..addAll(AlbumProvider.providers)
      ..addAll(SearchProvider.providers);
  }

  get provider => _provider;
}
