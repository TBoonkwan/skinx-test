import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skinx_test/features/authentication/data/model/user_profile_response.dart';
import 'package:skinx_test/features/search/presentation/search_cubit.dart';
import 'package:skinx_test/features/search/presentation/search_state.dart';
import 'package:skinx_test/shared/gridview/gridview_fixed_height.dart';
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
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<SearchCubit>().initial();
    });
  }

  @override
  void dispose() {
    context.read<SearchCubit>().reset();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final SearchCubit cubit = context.read<SearchCubit>();
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
                    "Cannot get your Search right now, please try again later"),
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
            "My Search",
            style: TextStyle(
              color: AppColor.tertiaryTextColor,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: AppColor.tertiaryTextColor,
              ),
            ),
            BlocConsumer<SearchCubit, SearchState>(
              builder: (BuildContext context, SearchState state) {
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
          onPressed: () {},
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
                return GridView.builder(
                  padding: const EdgeInsets.all(
                    16,
                  ),
                  gridDelegate: const GridViewFixHeight(
                    height: 208,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    crossAxisCount: 2,
                  ),
                  itemCount: state.search.length,
                  itemBuilder: (BuildContext context, int index) {
                    final item = state.search[index];
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            item.image,
                            height: 160,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          item.title,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(color: AppColor.tertiaryTextColor),
                        ),
                        Text(
                          item.subTitle,
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge
                              ?.copyWith(color: AppColor.secondaryTextColor),
                        ),
                      ],
                    );
                  },
                );
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
    );
  }
}
