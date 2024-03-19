import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skinx_test/features/playlist/config/playlist_provider.dart';

class AppProvider {
  final List<BlocProvider> _provider = [];

  AppProvider() {
    _provider..addAll(PlaylistProvider.providers);
  }

  get provider => _provider;
}
