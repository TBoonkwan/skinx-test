import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skinx_test/di/app_module.dart';
import 'package:skinx_test/features/authentication/data/repository/spotify_authentication_repository.dart';
import 'package:skinx_test/features/playlist/domain/repository/playlist_repository.dart';
import 'package:skinx_test/features/playlist/domain/usecase/get_playlist_usecase.dart';
import 'package:skinx_test/features/playlist/presentation/create_new_playlist/create_new_playlist_cubit.dart';
import 'package:skinx_test/features/playlist/presentation/playlist_cubit.dart';
import 'package:skinx_test/features/playlist/presentation/playlist_detail/playlist_detail_cubit.dart';

class PlaylistProvider {
  static final List<BlocProvider> providers = [
    BlocProvider<PlaylistCubit>(
      create: (BuildContext context) => PlaylistCubit(
        playlistUseCase: moduleProvider.get<IGetPlaylistUseCase>(),
        spotifyRepository:
            moduleProvider.get<SpotifyAuthenticationRepository>(),
      ),
    ),
    BlocProvider<CreateNewPlaylistCubit>(
      create: (BuildContext context) => CreateNewPlaylistCubit(
        playlistRepository: moduleProvider.get<IPlaylistRepository>(),
      ),
    ),
    BlocProvider<PlaylistDetailCubit>(
      create: (BuildContext context) => PlaylistDetailCubit(
        playlistRepository: moduleProvider.get<IPlaylistRepository>(),
      ),
    ),
  ];
}
