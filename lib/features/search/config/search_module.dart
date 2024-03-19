import 'package:dio/dio.dart';
import 'package:skinx_test/core/configuration/app_config.dart';
import 'package:skinx_test/core/module/app_module.dart';
import 'package:skinx_test/di/app_module.dart';
import 'package:skinx_test/features/search/data/repository/search_repository.dart';
import 'package:skinx_test/features/search/data/source/mock/search_mock_data_source.dart';
import 'package:skinx_test/features/search/data/source/search_data_source.dart';
import 'package:skinx_test/features/search/data/source/remote/search_remote_data_source.dart';
import 'package:skinx_test/features/search/domain/mapper/search_mapper.dart';
import 'package:skinx_test/features/search/domain/repository/search_repository.dart';
import 'package:skinx_test/features/search/domain/usecase/search_usecase.dart';

class SearchModule extends BaseModule {
  @override
  void provideModule() {
    moduleProvider.registerFactory<SearchDataSource>(
      instanceName: ConfigConstants.mockEnv,
      () => MockSearchDataSource(),
    );

    moduleProvider.registerFactory<SearchDataSource>(
      instanceName: ConfigConstants.prodEnv,
      () => RemoteSearchDataSource(dio: moduleProvider.get<Dio>()),
    );

    moduleProvider.registerFactory<ISearchRepository>(
      () => SearchRepository(
          dataSource: moduleProvider.get<SearchDataSource>(
              instanceName: AppConfig.getEnvironmentInstanceName())),
    );

    moduleProvider.registerFactory(
      () => SearchMapper(),
    );

    moduleProvider.registerFactory<IGetSearchUseCase>(
      () => GetSearchUseCase(
        searchRepository: moduleProvider.get<ISearchRepository>(),
        mapper: moduleProvider.get(),
      ),
    );
  }
}
