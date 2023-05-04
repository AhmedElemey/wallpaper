
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:shimmer/shimmer.dart';
import 'package:wallpaper/view/home/home_view/home_view.dart';
import 'package:wallpaper/view/home/home_widgets/top_app_bar_widget.dart';



class FavView extends StatefulWidget {
  const FavView({Key? key}) : super(key: key);

  @override
  State<FavView> createState() => _FavViewState();
}

class _FavViewState extends State<FavView> {

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
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(
            height: 15,
          ),
          Container(
            height: screenHeight * 0.8,
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
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                            color:
                            Theme.of(context).colorScheme.onPrimary,
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
                          "${4}",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                              color:
                              Theme.of(context).colorScheme.secondary,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GridView.builder(
                    primary: false,
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      crossAxisSpacing: 15,
                      mainAxisSpacing: screenHeight * 0.04,
                      maxCrossAxisExtent: screenHeight * 0.246,
                      childAspectRatio: 0.67,
                    ),
                    itemBuilder: (BuildContext ctx, index) {
                      return Stack(
                        children: [
                          HomeGridViewWidget(
                            screenHeight: screenHeight,
                            screenWidth: screenWidth,
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (context) => ProductDetails(),
                              //   ),
                              // );
                            },
                          ),
                          Positioned(
                            left: 10,top: 10,
                            child: Icon(
                              Icons.delete,
                              size: 30,
                              color:Theme.of(context).colorScheme.error,
                            ),
                          ),
                        ],
                      );
                    },
                    itemCount: 6,
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

