import 'package:dio/dio.dart';
import 'package:skinx_test/core/configuration/app_config.dart';
import 'package:skinx_test/core/module/app_module.dart';
import 'package:skinx_test/di/app_module.dart';
import 'package:skinx_test/features/album/data/repository/album_repository.dart';
import 'package:skinx_test/features/album/data/source/album_data_source.dart';
import 'package:skinx_test/features/album/data/source/mock/mock_album_data_source.dart';
import 'package:skinx_test/features/album/data/source/remote/remote_album_data_source.dart';
import 'package:skinx_test/features/album/domain/mapper/album_mapper.dart';
import 'package:skinx_test/features/album/domain/repository/album_repository.dart';
import 'package:skinx_test/features/album/domain/usecase/album_usecase.dart';

class AlbumModule extends BaseModule {
  @override
  void provideModule() {
    moduleProvider.registerFactory<AlbumDataSource>(
      instanceName: ConfigConstants.mockEnv,
      () => MockAlbumDataSource(),
    );

    moduleProvider.registerFactory<AlbumDataSource>(
      instanceName: ConfigConstants.prodEnv,
      () => RemoteAlbumDataSource(dio: moduleProvider.get<Dio>()),
    );

    moduleProvider.registerFactory<IAlbumRepository>(
      () => AlbumRepository(
          dataSource: moduleProvider.get<AlbumDataSource>(
              instanceName: AppConfig.getEnvironmentInstanceName())),
    );

    moduleProvider.registerFactory(
      () => AlbumMapper(),
    );

    moduleProvider.registerFactory<IGetAlbumUseCase>(
      () => GetAlbumUseCase(
        albumRepository: moduleProvider.get<IAlbumRepository>(),
        mapper: moduleProvider.get(),
      ),
    );
  }
}
