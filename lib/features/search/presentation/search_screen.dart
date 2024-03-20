import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skinx_test/features/album/config/album_route.dart';
import 'package:skinx_test/features/search/domain/entity/search_ui_model.dart';
import 'package:skinx_test/features/search/presentation/search_cubit.dart';
import 'package:skinx_test/features/search/presentation/search_state.dart';
import 'package:skinx_test/shared/loading/loading_indicator.dart';
import 'package:skinx_test/theme/color/app_color.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({
    super.key,
  });

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final SearchCubit cubit = context.read<SearchCubit>();
    controller.text = cubit.state.query.toString();
    return BlocListener<SearchCubit, SearchState>(
      listenWhen: (prev, current) => current.actionState != prev.actionState,
      listener: (context, state) async {
        switch (state.actionState) {
          case SearchActionState.networkError:
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text("Sorry"),
                content: const Text(
                    "Cannot get your search right now, please try again later"),
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
          title: SearchTextField(
            controller: controller,
            onSubmit: (text) {
              cubit.initial(
                text: text,
              );
            },
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.mic,
                color: AppColor.tertiaryTextColor,
              ),
            ),
          ],
        ),
        body: NotificationListener<ScrollNotification>(
          onNotification: (scrollNotification) {
            if (scrollNotification.metrics.pixels ==
                scrollNotification.metrics.maxScrollExtent) {
              // cubit.loadMoreItem();
            }
            return true;
          },
          child: NotificationListener<ScrollNotification>(
            onNotification: (scrollNotification) {
              if (scrollNotification.metrics.pixels ==
                  scrollNotification.metrics.maxScrollExtent) {
                cubit.loadMoreItem();
              }
              return true;
            },
            child: BlocConsumer<SearchCubit, SearchState>(
              listenWhen: (prev, current) =>
                  current.eventState != prev.eventState,
              listener: (context, state) async {},
              builder: (BuildContext context, SearchState state) {
                if (state.eventState == SearchEventState.initial) {
                  return LoadingIndicator(
                    size: Size(
                      MediaQuery.sizeOf(context).width,
                      MediaQuery.sizeOf(context).height * 0.7,
                    ),
                  );
                }

                if (state.eventState == SearchEventState.empty) {
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

                if (state.eventState == SearchEventState.success) {
                  return SearchAlbumContent(search: state.search);
                }

                if (state.eventState == SearchEventState.networkError) {
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
        bottomNavigationBar: BlocConsumer<SearchCubit, SearchState>(
          listenWhen: (prev, current) => current.eventState != prev.eventState,
          listener: (context, state) async {},
          builder: (context, state) {
            if (state.actionState == SearchActionState.loadMore) {
              return const LoadingIndicator(size: Size(80, 80));
            }

            return const SizedBox(
              height: 0,
            );
          },
        ),
      ),
    );
  }
}

class SearchTextField extends StatelessWidget {
  final TextEditingController controller;
  final Function(String) onSubmit;

  const SearchTextField(
      {super.key, required this.controller, required this.onSubmit});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: Theme.of(context)
          .textTheme
          .titleMedium
          ?.copyWith(color: AppColor.tertiaryTextColor),
      onSubmitted: (text) {
        onSubmit(text);
      },
      decoration: InputDecoration(
        suffix: GestureDetector(
          onTap: () {
            controller.clear();
            onSubmit("");
          },
          child: const Icon(
            Icons.close,
            color: AppColor.tertiaryTextColor,
          ),
        ),
      ),
    );
  }
}

class SearchAlbumContent extends StatelessWidget {
  final List<SearchUIModel> search;

  const SearchAlbumContent({super.key, required this.search});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: 16),
      itemBuilder: (BuildContext context, int index) {
        final SearchUIModel item = search[index];
        return ListTile(
          onTap: () {
            Navigator.of(context).pushNamed(
              AlbumRoute.albumScreen,
              arguments: item.id,
            );
          },
          leading: Image.network(item.image),
          title: Text(
            item.title,
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: Colors.white),
          ),
          subtitle: Text(
            item.subTitle,
            style: Theme.of(context)
                .textTheme
                .labelLarge
                ?.copyWith(color: AppColor.tertiaryTextColor),
          ),
        );
      },
      itemCount: search.length,
      separatorBuilder: (BuildContext context, int index) => const Divider(
        thickness: 16,
        color: Colors.transparent,
      ),
    );
  }
}
