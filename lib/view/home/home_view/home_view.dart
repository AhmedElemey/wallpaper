
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:shimmer/shimmer.dart';
import 'package:wallpaper/view/home/home_widgets/top_app_bar_widget.dart';



class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  @override
  Widget build(BuildContext context) {
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
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(
            height: 15,
          ),
          Container(
            // height:isSearch?  screenHeight*0.6:screenHeight*0.68,
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
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(
                children: [
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
                      return HomeGridViewWidget(
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


class HomeGridViewWidget extends StatelessWidget {
  const HomeGridViewWidget({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
    this.image,
    this.itemName,
    this.description,
    this.id,
    this.price,
    this.images,
    this.discount,
    this.onTap,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;
  final String? image, itemName, description, id, price, discount;
  final List<String>? images;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ?? () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: screenWidth / 2.332,
            height: screenHeight / 3,
            //padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.15),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: image == null
                  ? Image.asset(
                'assets/images/pexels-feyza-altun-15912960.jpg',
                fit: BoxFit.cover,
              )
                  : CachedNetworkImage(
                imageUrl: "$image",
                fit: BoxFit.cover,
                progressIndicatorBuilder:
                    (context, url, downloadProgress) => Center(
                    child: Shimmer.fromColors(
                        baseColor: Colors.grey.shade300,
                        highlightColor: Colors.grey.shade100,
                        child: Image.asset(
                          'assets/images/pexels-feyza-altun-15912960.jpg',
                          fit: BoxFit.cover,
                          width: screenWidth * 0.448,
                          height: screenHeight * 0.2,
                        ))),
                errorWidget: (context, url, error) {
                  return Image.asset(
                    'assets/images/pexels-feyza-altun-15912960.jpg',
                    fit: BoxFit.cover,
                  );
                },
              ),
            ),
          ),

        ],
      ),
    );
  }
}