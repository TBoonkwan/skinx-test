import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skinx_test/features/playlist/data/constants/playlist_constants.dart';
import 'package:skinx_test/features/playlist/presentation/playlist_cubit.dart';
import 'package:skinx_test/features/playlist/presentation/playlist_state.dart';
import 'package:skinx_test/shared/loading/loading_indicator.dart';

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
      context.read<PlaylistCubit>().initial(status: PlaylistStatus.todo.value);
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
          default:
        }
      },
      child: Scaffold(
        body: NotificationListener<ScrollNotification>(
          onNotification: (scrollNotification) {
            if (scrollNotification.metrics.pixels ==
                scrollNotification.metrics.maxScrollExtent) {
              // cubit.loadMoreItem();
            }
            return true;
          },
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate([
                  BlocConsumer<PlaylistCubit, PlaylistState>(
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
                              child: Text("No playlist"),
                            ),
                          ),
                        );
                      }

                      if (state.eventState == PlaylistEventState.success) {
                        return SizedBox();
                      }

                      if (state.eventState ==
                          PlaylistEventState.networkError) {
                        return SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.7,
                          child: Center(
                            child: TextButton(
                              onPressed: () {
                                cubit.initial(
                                    status: PlaylistStatus.todo.value);
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
                ]),
              )
            ],
          ),
        ),
        // bottomNavigationBar: BlocConsumer<PlaylistCubit, PlaylistState>(
        //   listenWhen: (prev, current) => current.eventState != prev.eventState,
        //   listener: (context, state) async {},
        //   builder: (context, state) {
        //     if (state.actionState == PlaylistActionState.loadMore) {
        //       return const LoadingIndicator(size: Size(80, 80));
        //     }
        //
        //     return const SizedBox(
        //       height: 0,
        //     );
        //   },
        // ),
      ),
    );
  }
}
