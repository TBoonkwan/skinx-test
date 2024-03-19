import 'package:dio/dio.dart';
import 'package:skinx_test/core/configuration/app_config.dart';
import 'package:skinx_test/core/module/app_module.dart';
import 'package:skinx_test/di/app_module.dart';
import 'package:skinx_test/features/playlist/data/repository/playlist_repository.dart';
import 'package:skinx_test/features/playlist/data/source/mock/mock_playlist_data_source.dart';
import 'package:skinx_test/features/playlist/data/source/playlist_data_source.dart';
import 'package:skinx_test/features/playlist/data/source/remote/remote_playlist_data_source.dart';
import 'package:skinx_test/features/playlist/domain/mapper/playlist_mapper.dart';
import 'package:skinx_test/features/playlist/domain/repository/playlist_repository.dart';
import 'package:skinx_test/features/playlist/domain/usecase/get_tplaylist_usecase.dart';

class PlaylistModule extends BaseModule {
  @override
  void provideModule() {
    moduleProvider.registerFactory<PlaylistDataSource>(
      instanceName: ConfigConstants.mockEnv,
      () => MockPlaylistDataSource(),
    );

    moduleProvider.registerFactory<PlaylistDataSource>(
      instanceName: ConfigConstants.prodEnv,
      () => RemotePlaylistDataSource(dio: moduleProvider.get<Dio>()),
    );

    moduleProvider.registerFactory<IPlaylistRepository>(
      () => TodoListRepository(
          dataSource: moduleProvider.get<PlaylistDataSource>(
              instanceName: AppConfig.getEnvironmentInstanceName())),
    );

    moduleProvider.registerFactory(
      () => PlaylistMapper(),
    );

    moduleProvider.registerFactory<IGetPlaylistUseCase>(
      () => GetPlaylistUseCase(
        playlistRepository: moduleProvider.get<IPlaylistRepository>(),
        mapper: moduleProvider.get(),
      ),
    );
  }
}
