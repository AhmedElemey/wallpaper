import 'package:flutter/material.dart';
import 'package:wallpaper/src/features/favorite/presentation/pages/fav_view.dart';
import 'package:wallpaper/src/features/home/presentation/pages/home_view.dart';
import 'package:wallpaper/view/search/search_view/search_view.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

int currentIndex = 0;

class _BottomNavBarState extends State<BottomNavBar> {
  void changePage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  final pages = [
    const HomeView(),
    const SearchView(),
    const FavView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[currentIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black54,
              blurRadius: 0.05,
            ),
          ],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15)),
        ),
        child: Theme(
          data: Theme.of(context).copyWith(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              backgroundColor: Theme.of(context).colorScheme.background,
              canvasColor: Colors.transparent),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: NavigationBarTheme(
              data: NavigationBarThemeData(
                  labelTextStyle: MaterialStateProperty.all(
                      Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 11,
                            fontWeight: FontWeight.w700,
                          )),
                  indicatorColor: Colors.transparent),
              child: NavigationBar(
                animationDuration: const Duration(seconds: 1),
                labelBehavior:
                    NavigationDestinationLabelBehavior.onlyShowSelected,
                backgroundColor: Colors.white,
                height: 75,
                selectedIndex: currentIndex,
                onDestinationSelected: changePage,
                destinations: [
                  NavigationDestination(
                      selectedIcon: Padding(
                        padding: const EdgeInsets.only(top: 18),
                        child: Container(
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.onSecondary,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(4))),
                          child: const Icon(
                            Icons.home,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      icon: Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                            color: Theme.of(context)
                                .colorScheme
                                .onSecondary
                                .withOpacity(0.1),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(4))),
                        child: Icon(
                          Icons.home,
                          color: Theme.of(context)
                              .colorScheme
                              .onSecondary
                              .withOpacity(0.7),
                          size: 30,
                        ),
                      ),
                      label: ""),
                  NavigationDestination(
                      selectedIcon: Padding(
                        padding: const EdgeInsets.only(top: 18),
                        child: Container(
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.onSecondary,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(4))),
                          child: Icon(
                            Icons.search,
                            color: Theme.of(context).colorScheme.tertiary,
                            size: 24,
                          ),
                        ),
                      ),
                      icon: Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                            color: Theme.of(context)
                                .colorScheme
                                .onSecondary
                                .withOpacity(0.1),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(4))),
                        child: Icon(
                          Icons.search,
                          color: Theme.of(context)
                              .colorScheme
                              .onSecondary
                              .withOpacity(0.7),
                          size: 26,
                        ),
                      ),
                      label: ""),
                  NavigationDestination(
                      selectedIcon: Padding(
                        padding: const EdgeInsets.only(top: 18),
                        child: Container(
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.onSecondary,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(4))),
                          child: Icon(
                            Icons.favorite,
                            color: Theme.of(context).colorScheme.tertiary,
                            size: 22,
                          ),
                        ),
                      ),
                      icon: Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                            color: Theme.of(context)
                                .colorScheme
                                .onSecondary
                                .withOpacity(0.1),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(4))),
                        child: Icon(
                          Icons.favorite,
                          color: Theme.of(context)
                              .colorScheme
                              .onSecondary
                              .withOpacity(0.7),
                          size: 22,
                        ),
                      ),
                      label: ""),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
