import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wallpaper/src/features/home/presentation/controllers/home_controller.dart';
import 'package:wallpaper/src/features/home/presentation/widgets/top_app_bar_widget.dart';

import '../../../home/presentation/widgets/home_view_widget.dart';
import '../../domain/search.dart';
import '../controllers/search_controller.dart';
import '../widgets/search_result_list.dart';
import '../widgets/search_textfield.dart';

class SearchView extends StatefulHookConsumerWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  ConsumerState<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends ConsumerState<SearchView> {
  TextEditingController searchController = TextEditingController();
  bool isSearch = false;
  bool isGrid = false;

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    final list = ref.watch(homeListFutureProvider);
    List<SearchPhotosEntity>? searchResult;
    ref.listen<AsyncValue<List<SearchPhotosEntity>?>>(searchListFutureProvider,
        (previous, next) {
      if (next.hasValue) {
        searchResult = next.value;
      }
    });
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenWidth, screenHeight * 0.07),
        child: const AppBarWidget(
          title: "Search",
          leading: SizedBox.shrink(),
          actionIcon: Icons.search_outlined,
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        //   physics: const BouncingScrollPhysics(),
        children: [
          SearchTextField(
            controller: searchController,
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            hintText: "Type Here",
            onChanged: (value) {
              searchController.text = value;
            },
            prefixIcon: InkWell(
              onTap: () {
                ref.watch(searchListFutureProvider.notifier).fetchSearchList(
                    SearchRequest(page: 1, query: searchController.text));
              },
              child: const Icon(Icons.search_outlined),
            ),
          ),
          SizedBox(
            height: screenHeight / 25.3,
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            //   height: screenHeight * 0.8,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(35), topRight: Radius.circular(35)),
              color: Theme.of(context).colorScheme.tertiary,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              children: [
                IntrinsicHeight(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Wallpapers",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isGrid = !isGrid;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 15),
                            child: Icon(
                              isGrid
                                  ? Icons.grid_view
                                  : Icons.format_list_bulleted_outlined,
                              size: 24,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  height: 1,
                  color:
                      Theme.of(context).colorScheme.onPrimary.withOpacity(0.3),
                ),
                const SizedBox(
                  height: 20,
                ),
                if (searchController.text == '') ...{
                  list.when(
                      data: (data) {
                        if (data == null || data.isEmpty) {
                          Center(
                            child: Text(
                              'There is No Photos in the List',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).colorScheme.primary),
                            ),
                          );
                        }
                        return isGrid
                            ? GridView.builder(
                                primary: false,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 20),
                                shrinkWrap: true,
                                physics: const BouncingScrollPhysics(),
                                gridDelegate:
                                    SliverGridDelegateWithMaxCrossAxisExtent(
                                  crossAxisSpacing: 25,
                                  mainAxisSpacing: screenHeight * 0.05,
                                  maxCrossAxisExtent: screenHeight * 0.246,
                                  childAspectRatio: 0.65,
                                ),
                                itemBuilder: (BuildContext ctx, index) {
                                  return HomeGridViewWidget(
                                    screenHeight: screenHeight,
                                    screenWidth: screenWidth,
                                    image: data![index].src.original,
                                  );
                                },
                                itemCount: 8,
                              )
                            : ListView.separated(
                                shrinkWrap: true,
                                physics: const BouncingScrollPhysics(),
                                itemBuilder: (ctx, index) {
                                  return HomeListviewWidget(
                                    image: data[index].src.original,
                                  );
                                },
                                separatorBuilder: (ctx, index) {
                                  return const SizedBox(
                                    height: 30,
                                  );
                                },
                                itemCount: data!.length,
                              );
                      },
                      error: (error, stackTrace) => Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  error.toString(),
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primary),
                                )
                              ],
                            ),
                          ),
                      loading: () => Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                CircularProgressIndicator.adaptive(),
                              ],
                            ),
                          )),
                },
                if (searchController.text != '' && searchResult != null) ...{
                  isGrid
                      ? GridView.builder(
                          primary: false,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithMaxCrossAxisExtent(
                            crossAxisSpacing: 25,
                            mainAxisSpacing: screenHeight * 0.05,
                            maxCrossAxisExtent: screenHeight * 0.246,
                            childAspectRatio: 0.65,
                          ),
                          itemBuilder: (BuildContext ctx, index) {
                            return HomeGridViewWidget(
                              screenHeight: screenHeight,
                              screenWidth: screenWidth,
                              image: searchResult![index].src.original,
                            );
                          },
                          itemCount: 8,
                        )
                      : ListView.separated(
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          itemBuilder: (ctx, index) {
                            return HomeListviewWidget(
                              image: searchResult![index].src.original,
                            );
                          },
                          separatorBuilder: (ctx, index) {
                            return const SizedBox(
                              height: 30,
                            );
                          },
                          itemCount: searchResult!.length,
                        )
                },
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
