import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wallpaper/src/features/home/presentation/pages/wallpaper_details.dart';
import 'package:wallpaper/src/features/home/presentation/widgets/top_app_bar_widget.dart';
import '../../domain/home.dart';
import '../controllers/home_controller.dart';
import '../widgets/home_view_widget.dart';

final isLastHomeDataRequest = StateProvider<bool>((ref) {
  return false;
});
final offsetProvider = StateProvider<int>((ref) {
  return 2;
});
final isHomeDataLoading = StateProvider<bool>((ref) {
  return false;
});

class HomeView extends StatefulHookConsumerWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  ConsumerState<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {
  late final ScrollController _scrollController;
  Future<void> _fetchMoreHomeData(int offset) async {
    if (offset > 1) {
      ref.read(isHomeDataLoading.notifier).state = true;
    }
    ref.watch(offsetProvider);
    await ref.read(homeListFutureProvider.notifier).getMoreHomeData(HomeRequest(
          page: offset,
          per_page: 10,
        ));

    ref.read(isHomeDataLoading.notifier).state = false;
  }

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()
      ..addListener(() {
        if (_scrollController.offset >=
                _scrollController.position.maxScrollExtent &&
            !_scrollController.position.outOfRange) {
          final newOffset = ref.read(offsetProvider.notifier).state++;
          final lastRequest = ref.watch(isLastHomeDataRequest);
          if (!lastRequest) {
            _fetchMoreHomeData(newOffset);
          }
        }
      });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final list = ref.watch(homeListFutureProvider);
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(screenWidth, screenHeight * 0.07),
          child: const AppBarWidget(
            title: "Home",
            leading: SizedBox.shrink(),
            actionIcon: Icons.home,
          ),
        ),
        body: list.when(
            data: (data) {
              debugPrint(data.toString());
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
              return ListView(
                physics: const BouncingScrollPhysics(),
                controller: _scrollController,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35)),
                      color: Theme.of(context).colorScheme.tertiary,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 30),
                      child: Column(
                        children: [
                          GridView.builder(
                            // controller: _scrollController,
                            primary: false,
                            shrinkWrap: true,
                            physics: const BouncingScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithMaxCrossAxisExtent(
                              crossAxisSpacing: 15,
                              mainAxisSpacing: screenHeight * 0.04,
                              maxCrossAxisExtent: screenHeight * 0.246,
                              childAspectRatio: 0.67,
                            ),
                            itemBuilder: (BuildContext ctx, index) {
                              return HomeGridViewWidget(
                                screenHeight: screenHeight,
                                screenWidth: screenWidth,
                                image: data[index].src.original,
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => WallpaperView(
                                          photoUrl: data[index].src.original),
                                    ),
                                  );
                                },
                              );
                            },
                            itemCount: data!.length,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
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
                            color: Theme.of(context).colorScheme.primary),
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
                )));
  }
}
