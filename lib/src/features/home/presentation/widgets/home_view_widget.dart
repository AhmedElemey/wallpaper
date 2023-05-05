import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

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
            height: screenHeight / 3.35,
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
                      imageUrl: image!,
                      fit: BoxFit.cover,
                      progressIndicatorBuilder:
                          (context, url, downloadProgress) => Center(
                              child: Shimmer.fromColors(
                                  baseColor: Colors.grey.shade300,
                                  highlightColor: Colors.grey.shade100,
                                  child: Image.asset(
                                    'assets/images/pexels-feyza-altun-15912960.jpg',
                                    fit: BoxFit.cover,
                                    width: screenWidth / 2.332,
                                    height: screenHeight / 3.5,
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
