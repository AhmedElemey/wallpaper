import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class HomeListviewWidget extends StatelessWidget {
  const HomeListviewWidget(
      {Key? key,
      this.image,
      this.itemName,
      this.description,
      this.id,
      this.price,
      this.discount,
      this.images,
      this.onTap})
      : super(key: key);

  final String? image, itemName, description, id, price, discount;
  final List<String>? images;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: onTap ?? () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: screenWidth * 0.9,
              height: screenHeight / 2,
              padding: const EdgeInsets.symmetric(horizontal: 50),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                // boxShadow: [
                //   BoxShadow(
                //     color: Colors.grey.withOpacity(0.15),
                //     spreadRadius: 5,
                //     blurRadius: 7,
                //     offset: const Offset(0, 3), // changes position of shadow
                //   ),
                // ],
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
      ),
    );
  }
}
