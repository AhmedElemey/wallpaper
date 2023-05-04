import 'package:flutter/material.dart';

// Colors
const Color fonts = Color(0xff28282A); // fonts
 Color secondaryFonts = Color(0xff28292A).withOpacity(.85); // secondary fonts
const Color icons = Color(0xff7889D3); // icons
const Color buttons = Color(0xff586bca); // buttons
const Color background = Color(0xfff9fafc); // background
const Color white = Color(0xffffffff);

class Palette {
  static const MaterialColor primary = MaterialColor(
    0xff28282A,
    <int, Color>{
      50: Color(0xffbf544d),
      100: Color(0xffac4c45),
      200: Color(0xff99433e),
      300: Color(0xff863b36),
      400: Color(0xff73322e),
      500: Color(0xff602a27),
      600: Color(0xff4c221f),
      700: Color(0xff391917),
      800: Color(0xff130808),
      900: Color(0xff000000),
    },
  );
}
