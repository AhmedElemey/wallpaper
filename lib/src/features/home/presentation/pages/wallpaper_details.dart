import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:wallpaper/src/features/home/presentation/widgets/top_app_bar_widget.dart';
import 'package:shimmer/shimmer.dart';
import 'dart:io';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:path_provider/path_provider.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

import '../../../favorite/presentation/controllers/db_helper.dart';

class WallpaperView extends StatefulWidget {
  const WallpaperView({
    Key? key,
    this.photoUrl,
  }) : super(key: key);

  final String? photoUrl;

  @override
  State<WallpaperView> createState() => _WallpaperViewState();
}

class _WallpaperViewState extends State<WallpaperView> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(screenWidth, screenHeight * 0.07),
          child: AppBarWidget(
            title: "Wallpaper Details",
            leading: InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () {
                Navigator.pop(context);
              },
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
                  Icons.arrow_back,
                  color: Theme.of(context).colorScheme.primary,
                  size: 22,
                ),
              ),
            ),
            action: Row(
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    Fluttertoast.showToast(
                      msg: 'adding to favorite',
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.white,
                      textColor: Colors.black,
                      fontSize: 16.0,
                    );
                    addFavorite(widget.photoUrl!);
                  },
                  child: Container(
                    height: 30,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
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
                  onTap: () {
                    // _startDownload();
                    Fluttertoast.showToast(
                      msg: 'Downloading Photo',
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.white,
                      textColor: Colors.black,
                      fontSize: 16.0,
                    );
                    saveImage();
                  },
                  child: Container(
                    height: 30,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
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
        body: SizedBox(
          width: screenWidth,
          height: screenHeight,
          child: CachedNetworkImage(
            imageUrl: widget.photoUrl!,
            fit: BoxFit.cover,
            progressIndicatorBuilder: (context, url, downloadProgress) =>
                Center(
                    child: Shimmer.fromColors(
                        baseColor: Colors.grey.shade300,
                        highlightColor: Colors.grey.shade100,
                        child: Image.asset(
                          'assets/images/pexels-feyza-altun-15912960.jpg',
                          fit: BoxFit.cover,
                          width: screenWidth * .9,
                          height: screenHeight * .85,
                        ))),
            errorWidget: (context, url, error) {
              return Image.asset(
                'assets/images/pexels-feyza-altun-15912960.jpg',
                fit: BoxFit.cover,
              );
            },
          ),
        ));
  }

  addFavorite(String imageUrl) async {
    final String imagePath = await downloadAndSaveImage(imageUrl);
    await DBHelper().insertFavorite(imagePath);
    Fluttertoast.showToast(
      msg: 'Photo added to favorite',
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.green,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  Future<String> downloadAndSaveImage(String url) async {
    final response = await http.get(Uri.parse(url));
    final documentsDir = await getApplicationDocumentsDirectory();
    final file =
        File('${documentsDir.path}/${DateTime.now().toIso8601String()}.jpg');
    await file.writeAsBytes(response.bodyBytes);
    return file.path;
  }

  saveImage() async {
    // used to save the photo into the gallery
    Dio dio = Dio();
    var dir = await getTemporaryDirectory();
    var filename = widget.photoUrl!.split("/").last;
    await dio.download(
      widget.photoUrl!,
      "${dir.path}/$filename",
    );
    await GallerySaver.saveImage("${dir.path}/$filename");
    //  await ImageGallerySaver.saveFile("${dir.path}/$filename");
    Fluttertoast.showToast(
      msg: 'File Downloaded Successfully',
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.green,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }
  // bool _downloading = false;
  // String _localFilePath = '';
  // late final documentDirectory;

  // Future<void> _startDownload() async {
  // used to save the photo into the files
  //   setState(() {
  //     _downloading = true;
  //   });
  //   final response = await http.get(Uri.parse(widget.photoUrl!));
  //   if (Platform.isAndroid) {
  //     documentDirectory = Directory('/storage/emulated/0/Download');
  //   } else {
  //     documentDirectory = await getApplicationDocumentsDirectory();
  //   }
  //   final filePath = '${documentDirectory.path}/image.png';
  //   final file = File(filePath);
  //   await file.writeAsBytes(response.bodyBytes);
  //   Fluttertoast.showToast(
  //     msg: 'File Downloaded Successfully',
  //     toastLength: Toast.LENGTH_SHORT,
  //     gravity: ToastGravity.BOTTOM,
  //     timeInSecForIosWeb: 1,
  //     backgroundColor: Colors.green,
  //     textColor: Colors.white,
  //     fontSize: 16.0,
  //   );

  //   setState(() {
  //     _downloading = false;
  //     _localFilePath = filePath;
  //   });
  // }
}
