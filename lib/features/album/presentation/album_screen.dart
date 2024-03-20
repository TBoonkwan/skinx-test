import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skinx_test/features/album/domain/entity/album_ui_model.dart';
import 'package:skinx_test/features/album/presentation/album_cubit.dart';
import 'package:skinx_test/features/album/presentation/album_state.dart';
import 'package:skinx_test/features/playlist/config/playlist_route.dart';
import 'package:skinx_test/features/search/config/search_route.dart';
import 'package:skinx_test/shared/loading/loading_indicator.dart';
import 'package:skinx_test/theme/color/app_color.dart';

class AlbumScreen extends StatefulWidget {
  const AlbumScreen({
    super.key,
  });

  @override
  State<AlbumScreen> createState() => _AlbumScreenState();
}

class _AlbumScreenState extends State<AlbumScreen> {
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final arguments = ModalRoute.of(context)?.settings.arguments;
      if (arguments != null) {
        final String id = arguments as String;
        context.read<AlbumCubit>()
          ..setupAlbumId(id)
          ..initial();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final AlbumCubit cubit = context.read<AlbumCubit>();
    return BlocListener<AlbumCubit, AlbumState>(
      listenWhen: (prev, current) => current.actionState != prev.actionState,
      listener: (context, state) async {
        switch (state.actionState) {
          case AlbumActionState.networkError:
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text("Sorry"),
                content: const Text(
                    "Cannot get the detail now, please try again later"),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text("OK"),
                  ),
                ],
              ),
            );
            break;
          default:
        }
      },
      child: Scaffold(
        backgroundColor: AppColor.primaryTextColor,
        appBar: AppBar(
          backgroundColor: AppColor.primaryTextColor,
          toolbarHeight: 56,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: AppColor.tertiaryTextColor,
            ),
          ),
          title: BlocConsumer<AlbumCubit, AlbumState>(
            listenWhen: (prev, current) =>
                current.eventState != prev.eventState,
            listener: (BuildContext context, AlbumState state) {},
            builder: (BuildContext context, AlbumState state) {
              if (state.eventState == AlbumEventState.success) {
                final albumDetail = state.albumDetail;
                return AlbumDetailAppBar(
                  albumDetail: albumDetail,
                );
              } else {
                return const SizedBox();
              }
            },
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(SearchRoute.searchScreen);
              },
              icon: const Icon(
                Icons.search,
                color: AppColor.tertiaryTextColor,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: BlocConsumer<AlbumCubit, AlbumState>(
            listenWhen: (prev, current) =>
                current.eventState != prev.eventState,
            listener: (context, state) async {},
            builder: (BuildContext context, AlbumState state) {
              if (state.eventState == AlbumEventState.initial) {
                return LoadingIndicator(
                  size: Size(
                    MediaQuery.sizeOf(context).width,
                    MediaQuery.sizeOf(context).height * 0.7,
                  ),
                );
              }

              if (state.eventState == AlbumEventState.empty) {
                return SizedBox(
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height * 0.7,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Center(
                      child: Text(
                        "No Search",
                        style: TextStyle(
                          color: AppColor.tertiaryTextColor,
                        ),
                      ),
                    ),
                  ),
                );
              }

              if (state.eventState == AlbumEventState.success) {
                final AlbumUIModel? albumUIModel = state.albumDetail;
                if (albumUIModel == null) {
                  return const SizedBox();
                }
                return SingleChildScrollView(
                  child: AlbumDetailContent(
                    albumUIModel: albumUIModel,
                  ),
                );
              }

              if (state.eventState == AlbumEventState.networkError) {
                return SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.7,
                  child: Center(
                    child: TextButton(
                      onPressed: () {
                        cubit.initial();
                      },
                      child: const Text(
                        "Try Again",
                      ),
                    ),
                  ),
                );
              }

              return const SizedBox();
            },
          ),
        ),
      ),
    );
  }
}

class AlbumDetailAppBar extends StatelessWidget {
  final AlbumUIModel? albumDetail;

  const AlbumDetailAppBar({
    super.key,
    this.albumDetail,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipOval(
                child: Image.network(
                  albumDetail?.logo ?? "",
                  width: 20,
                  height: 20,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                albumDetail?.artistName ?? "",
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: Colors.white,
                    ),
              )
            ],
          ),
          Text(
            "Album : ${albumDetail?.releaseDate ?? ""}",
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: AppColor.tertiaryTextColor,
                ),
          ),
        ],
      ),
    );
  }
}

class AlbumDetailContent extends StatelessWidget {
  final AlbumUIModel albumUIModel;

  const AlbumDetailContent({super.key, required this.albumUIModel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
            albumUIModel?.logo ?? "",
            width: 240,
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              albumUIModel?.albumName.toUpperCase() ?? "",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: Colors.white,
                  ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.download,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(
                    Icons.my_library_add_outlined,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed(
                      PlaylistRoute.addTracks,
                      arguments: albumUIModel.tracks,
                    );
                  },
                ),
                FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Colors.white,
                  child: const Icon(
                    Icons.play_arrow,
                  ),
                ),
                IconButton(
                  icon: const Icon(
                    Icons.share,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          ListView.separated(
            shrinkWrap: true,
            primary: false,
            padding: const EdgeInsets.symmetric(vertical: 16),
            itemBuilder: (BuildContext context, int index) {
              final item = albumUIModel?.tracks[index];
              return ListTile(
                leading: Text(
                  item?.trackNumber ?? "",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(color: Colors.white),
                ),
                title: Text(
                  item?.title ?? "",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: Colors.white),
                ),
                subtitle: Text(
                  item?.subtitle ?? "",
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.copyWith(color: AppColor.tertiaryTextColor),
                ),
                trailing: IconButton(
                  icon: const Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const Divider(
                height: 1,
                color: Colors.transparent,
              );
            },
            itemCount: albumUIModel.tracks.length ?? 0,
          )
        ],
      ),
    );
  }
}
