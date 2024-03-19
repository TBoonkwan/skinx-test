import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skinx_test/di/app_module.dart';
import 'package:skinx_test/features/album/domain/usecase/album_usecase.dart';
import 'package:skinx_test/features/album/presentation/album_cubit.dart';

class AlbumProvider {
  static final List<BlocProvider> providers = [
    BlocProvider<AlbumCubit>(
      create: (BuildContext context) => AlbumCubit(
        searchUseCase: moduleProvider.get<IGetAlbumUseCase>(),
      ),
    ),
  ];
}
