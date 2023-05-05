import 'dart:io';

import 'package:flutter/material.dart';
import 'package:wallpaper/src/features/home/presentation/widgets/top_app_bar_widget.dart';

import '../controllers/db_helper.dart';

class FavView extends StatefulWidget {
  const FavView({Key? key}) : super(key: key);

  @override
  State<FavView> createState() => _FavViewState();
}

class _FavViewState extends State<FavView> {
  List<String>? _favorites;

  @override
  void initState() {
    super.initState();

    _loadFavorites();
  }

  Future<void> _loadFavorites() async {
    await DBHelper.init();
    _favorites = await DBHelper().getFavorites();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenWidth, screenHeight * 0.07),
        child: const AppBarWidget(
          title: "Favourite",
          leading: SizedBox.shrink(),
          actionIcon: Icons.favorite_outline_sharp,
        ),
      ),
      body: _favorites == null
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircularProgressIndicator.adaptive(),
                ],
              ),
            )
          : ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: screenHeight * 0.8,
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
                        horizontal: 20, vertical: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 7, vertical: 7),
                              decoration: BoxDecoration(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .secondary
                                      .withOpacity(0.15),
                                  borderRadius: BorderRadius.circular(8.0)),
                              child: Icon(
                                Icons.favorite_outline_sharp,
                                color: Theme.of(context).colorScheme.secondary,
                                size: 25,
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Text(
                              "Fav",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                            ),
                            const Spacer(),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 8),
                              decoration: BoxDecoration(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .secondary
                                      .withOpacity(0.15),
                                  borderRadius: BorderRadius.circular(8.0)),
                              child: Text(
                                _favorites!.length.toString(),
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        _favorites!.isEmpty
                            ? Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'No Photos in the Favorite List',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary),
                                  ),
                                ],
                              )
                            : GridView.builder(
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
                                  return ClipRRect(
                                    borderRadius: BorderRadius.circular(15.0),
                                    child: Image.file(
                                      File(
                                        _favorites![index],
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  );
                                  // return Stack(
                                  //   children: [
                                  //     HomeGridViewWidget(
                                  //       screenHeight: screenHeight,
                                  //       screenWidth: screenWidth,

                                  //       onTap: () {
                                  //         // Navigator.push(
                                  //         //   context,
                                  //         //   MaterialPageRoute(
                                  //         //     builder: (context) => ProductDetails(),
                                  //         //   ),
                                  //         // );
                                  //       },
                                  //     ),
                                  //     Positioned(
                                  //       left: 10,
                                  //       top: 10,
                                  //       child: Icon(
                                  //         Icons.delete,
                                  //         size: 30,
                                  //         color: Theme.of(context).colorScheme.error,
                                  //       ),
                                  //     ),
                                  //   ],
                                  // );
                                },
                                itemCount: _favorites!.length,
                              )
                      ],
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
