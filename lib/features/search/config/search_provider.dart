import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skinx_test/di/app_module.dart';
import 'package:skinx_test/features/Search/presentation/Search_cubit.dart';
import 'package:skinx_test/features/authentication/data/repository/spotify_authentication_repository.dart';
import 'package:skinx_test/features/search/domain/usecase/search_usecase.dart';

class SearchProvider {
  static final List<BlocProvider> providers = [
    BlocProvider<SearchCubit>(
      create: (BuildContext context) => SearchCubit(
        searchUseCase: moduleProvider.get<IGetSearchUseCase>(),
        spotifyRepository:
            moduleProvider.get<SpotifyAuthenticationRepository>(),
      ),
    ),
  ];
}
