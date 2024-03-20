import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skinx_test/features/authentication/data/model/user_profile_response.dart';
import 'package:skinx_test/features/playlist/config/playlist_route.dart';
import 'package:skinx_test/features/playlist/domain/entity/playlist_ui_model.dart';
import 'package:skinx_test/features/playlist/presentation/playlist_cubit.dart';
import 'package:skinx_test/features/playlist/presentation/playlist_state.dart';
import 'package:skinx_test/features/search/config/search_route.dart';
import 'package:skinx_test/shared/gridview/gridview_fixed_height.dart';
import 'package:skinx_test/shared/loading/loading_indicator.dart';
import 'package:skinx_test/theme/color/app_color.dart';

class PlaylistScreen extends StatefulWidget {
  const PlaylistScreen({
    super.key,
  });

  @override
  State<PlaylistScreen> createState() => _PlaylistScreenState();
}

class _PlaylistScreenState extends State<PlaylistScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<PlaylistCubit>().initial();
    });
  }

  @override
  void dispose() {
    context.read<PlaylistCubit>().reset();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final PlaylistCubit cubit = context.read<PlaylistCubit>();
    return BlocListener<PlaylistCubit, PlaylistState>(
      listenWhen: (prev, current) => current.actionState != prev.actionState,
      listener: (context, state) async {
        switch (state.actionState) {
          case PlaylistActionState.networkError:
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text("Sorry"),
                content: const Text(
                    "Cannot get your playlist right now, please try again later"),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text("OK"),
                  ),
                ],
              ),
            );
            break;
          case PlaylistActionState.playlistError:
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text("Sorry"),
                content: const Text(
                    "Cannot get your playlist right now, please try again later"),
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
          title: const Text(
            "My Playlist",
            style: TextStyle(
              color: AppColor.tertiaryTextColor,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  SearchRoute.searchScreen,
                );
              },
              icon: const Icon(
                Icons.search,
                color: AppColor.tertiaryTextColor,
              ),
            ),
            BlocConsumer<PlaylistCubit, PlaylistState>(
              builder: (BuildContext context, PlaylistState state) {
                UserProfileResponse? user = state.userProfileResponse;

                if (user == null) {
                  return const SizedBox();
                }
                if (user.images?.isEmpty == true) {
                  return IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.account_circle_outlined,
                      color: AppColor.tertiaryTextColor,
                    ),
                  );
                }
                return IconButton(
                  onPressed: () {},
                  icon: Image.network(
                    state.userProfileResponse?.images?.first.url.toString() ??
                        "",
                  ),
                );
              },
              listenWhen: (prev, current) =>
                  current.userProfileResponse != prev.userProfileResponse,
              listener: (context, state) async {},
            ),
            const SizedBox(
              width: 16,
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            var result = await Navigator.of(context)
                .pushNamed(PlaylistRoute.createPlaylistScreen);
            if (result != null) {
              cubit.reloadPlaylist();
            }
          },
          child: const Icon(
            Icons.add,
            color: AppColor.brandingColor,
          ),
        ),
        body: NotificationListener<ScrollNotification>(
          onNotification: (scrollNotification) {
            if (scrollNotification.metrics.pixels ==
                scrollNotification.metrics.maxScrollExtent) {
              // cubit.loadMoreItem();
            }
            return true;
          },
          child: BlocConsumer<PlaylistCubit, PlaylistState>(
            listenWhen: (prev, current) =>
                current.eventState != prev.eventState,
            listener: (context, state) async {},
            builder: (BuildContext context, PlaylistState state) {
              if (state.eventState == PlaylistEventState.initial) {
                return LoadingIndicator(
                  size: Size(
                    MediaQuery.sizeOf(context).width,
                    MediaQuery.sizeOf(context).height * 0.7,
                  ),
                );
              }

              if (state.eventState == PlaylistEventState.empty) {
                return SizedBox(
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height * 0.7,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Center(
                      child: Text(
                        "No playlist",
                        style: TextStyle(
                          color: AppColor.tertiaryTextColor,
                        ),
                      ),
                    ),
                  ),
                );
              }

              if (state.eventState == PlaylistEventState.success) {
                return GridView.builder(
                  padding: const EdgeInsets.all(
                    16,
                  ),
                  gridDelegate: const GridViewFixHeight(
                    height: 209,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    crossAxisCount: 2,
                  ),
                  itemCount: state.playlist.length,
                  itemBuilder: (BuildContext context, int index) {
                    final item = state.playlist[index];
                    return MyPlaylistItem(
                      item: item,
                      onClicked: (id) {
                        Navigator.of(context).pushNamed(
                          PlaylistRoute.playlistDetail,
                          arguments: id,
                        );
                      },
                    );
                  },
                );
              }

              if (state.eventState == PlaylistEventState.networkError) {
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

class MyPlaylistItem extends StatelessWidget {
  final PlaylistUIModel item;
  final Function(String) onClicked;

  const MyPlaylistItem({
    super.key,
    required this.item,
    required this.onClicked,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onClicked.call(item.id);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Builder(builder: (context) {
              if (item.image.isEmpty == true) {
                return const Icon(
                  Icons.photo,
                  size: 160,
                );
              }
              return Image.network(
                item.image,
                height: 160,
                fit: BoxFit.cover,
              );
            }),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            item.title,
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: Colors.white),
          ),
          Text(
            item.subTitle,
            style: Theme.of(context)
                .textTheme
                .labelLarge
                ?.copyWith(color: AppColor.tertiaryTextColor),
          ),
        ],
      ),
    );
  }
}
