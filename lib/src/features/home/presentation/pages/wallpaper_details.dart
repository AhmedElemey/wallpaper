import 'package:flutter/material.dart';
import 'package:wallpaper/src/features/home/presentation/widgets/top_app_bar_widget.dart';

class WallpaperView extends StatefulWidget {
  const WallpaperView({Key? key}) : super(key: key);

  @override
  State<WallpaperView> createState() => _WallpaperViewState();
}

class _WallpaperViewState extends State<WallpaperView> {
  static String link= "https://images.pexels.com/photos/14963651/pexels-photo-14963651.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1";
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenWidth, screenHeight * 0.07),
        child:  AppBarWidget(
          title: "Wallpaper Details",
          leading: const SizedBox.shrink(),
          action:Row(
            children: [
              InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap:  () {},
                child: Container(
                  height: 30,
                  margin:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 6,
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Theme.of(context)
                              .colorScheme
                              .primary
                              .withOpacity(0.3)),
                      borderRadius: BorderRadius.circular(8.0)),
                  child: Icon(
                    Icons.favorite_outline_sharp,
                    color: Theme.of(context).colorScheme.primary,
                    size: 22,
                  ),
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap:  () {},
                child: Container(
                  height: 30,
                  margin:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 6,
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Theme.of(context)
                              .colorScheme
                              .primary
                              .withOpacity(0.3)),
                      borderRadius: BorderRadius.circular(8.0)),
                  child: Icon(
                    Icons.download,
                    color: Theme.of(context).colorScheme.primary,
                    size: 22,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        width: 200, // Set the width of the image
        height: 200,
        decoration:  BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              link,
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
