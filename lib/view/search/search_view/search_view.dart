import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:wallpaper/src/features/home/presentation/pages/home_view.dart';
import 'package:wallpaper/src/features/home/presentation/widgets/top_app_bar_widget.dart';

import '../../../src/features/home/presentation/widgets/home_view_widget.dart';

class SearchView extends StatefulWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  TextEditingController searchController = TextEditingController();
  bool isSearch = false;
  bool isGrid = false;

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
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
                isGrid
                    ? GridView.builder(
                        primary: false,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          crossAxisSpacing: 25,
                          mainAxisSpacing: screenHeight * 0.05,
                          maxCrossAxisExtent: screenHeight * 0.246,
                          childAspectRatio: 0.65,
                        ),
                        itemBuilder: (BuildContext ctx, index) {
                          return HomeGridViewWidget(
                            screenHeight: screenHeight,
                            screenWidth: screenWidth,
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (context) => const ProductDetails(),
                              //   ),
                              // );
                            },
                          );
                        },
                        itemCount: 8,
                      )
                    : ListView.separated(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (ctx, index) {
                          return HomeListviewWidget(
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (context) => const ProductDetails(),
                              //   ),
                              // );
                            },
                          );
                        },
                        separatorBuilder: (ctx, index) {
                          return const SizedBox(
                            height: 30,
                          );
                        },
                        itemCount: 5),
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

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    Key? key,
    this.controller,
    this.labelText,
    this.hintText,
    this.obscureText,
    this.readOnly,
    this.suffixIcon,
    this.onTap,
    this.focusNode,
    this.validator,
    this.prefixIcon,
    this.hintStyle,
    this.onChanged,
    this.keyboardType,
    this.padding,
  }) : super(key: key);
  final EdgeInsetsGeometry? padding;
  final TextEditingController? controller;
  final String? labelText, hintText;
  final bool? obscureText, readOnly;
  final Widget? suffixIcon, prefixIcon;
  final GestureTapCallback? onTap;
  final FocusNode? focusNode;
  final FormFieldValidator? validator;
  final TextStyle? hintStyle;
  final TextInputType? keyboardType;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(0.0),
      child: TextFormField(
        textAlign: TextAlign.center,
        keyboardType: keyboardType ?? TextInputType.text,
        onChanged: onChanged ?? (value) {},
        controller: controller,
        obscureText: obscureText ?? false,
        cursorHeight: 30,
        cursorColor: Theme.of(context).colorScheme.secondary,
        style: TextStyle(
            color: Theme.of(context).colorScheme.secondary, fontSize: 22),
        readOnly: readOnly ?? false,
        onTap: onTap ?? () {},
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          // label: Text(
          //   labelText ?? "Full Name",
          hintStyle: hintStyle ??
              Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 30, color: Theme.of(context).colorScheme.secondary),
          hintText: hintText ?? "Full Name",
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color:
                    Theme.of(context).colorScheme.onSecondary.withOpacity(0.6),
                width: 1),
          ),
          disabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color:
                    Theme.of(context).colorScheme.onSecondary.withOpacity(0.6),
                width: 1),
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(
                color:
                    Theme.of(context).colorScheme.onSecondary.withOpacity(0.6),
                width: 1),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: Theme.of(context).colorScheme.onSecondary, width: 1),
          ),
          suffixIcon: suffixIcon ?? const SizedBox.shrink(),
          prefixIcon: prefixIcon ?? const SizedBox.shrink(),
          prefix: const SizedBox.shrink(),
        ),
        focusNode: focusNode ?? FocusNode(),
        validator: validator ?? (value) {},
      ),
    );
  }
}

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
