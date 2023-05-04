import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wallpaper/shared/theme/color_pallete.dart';

ThemeData lightTheme = ThemeData(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Palette.primary, //fonts
  )
      .copyWith(onPrimary: secondaryFonts)
      .copyWith(secondary: icons)
      .copyWith(onSecondary: buttons)
      .copyWith(tertiary:white)
      .copyWith(error:const Color(0xffB80B0B))
      .copyWith(background: background),
  fontFamily: "Inter",
  primaryColor: Palette.primary,
  scaffoldBackgroundColor: background,
  iconTheme: const IconThemeData(color:icons, size: 20),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: buttons,
  ),
  bottomSheetTheme: const BottomSheetThemeData(
    backgroundColor: white,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: background,
    centerTitle: true,
    actionsIconTheme: IconThemeData(
      color:fonts,
      size: 20,
    ),
    iconTheme: IconThemeData(
      color: icons,
      size: 20,
    ),
    titleTextStyle: TextStyle(
      fontFamily: "Inter",
      color: fonts,
      fontSize: 16,
      fontWeight: FontWeight.w700,
    ),
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: background,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    ),
    elevation: 0,
  ),
  bottomNavigationBarTheme:  BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    backgroundColor: Colors.white,
    selectedIconTheme: const IconThemeData(
      color: icons,
      size: 22,
    ),
    unselectedIconTheme: IconThemeData(
      color: fonts.withOpacity(0.7),
      size: 20,
    ),
    selectedLabelStyle: const TextStyle(
      color: fonts,
      fontFamily: "Inter",
      fontSize: 11,
      fontWeight: FontWeight.w500,
    ),
    unselectedLabelStyle: const TextStyle(
      color: fonts,
      fontFamily: "Inter",
      fontSize: 11,
      fontWeight: FontWeight.w400,
    ),
    selectedItemColor: icons,
    unselectedItemColor:fonts.withOpacity(0.7),
  ),
  checkboxTheme: CheckboxThemeData(
    side: const BorderSide(width: 1, color: Color(0xff999999)),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(3),
    ),
    splashRadius: 15,
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    fillColor:
        MaterialStateColor.resolveWith((states) => icons),
    checkColor: MaterialStateColor.resolveWith((states) => Colors.white),
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontFamily: "Inter",
      fontSize: 34,
      fontWeight: FontWeight.w400,
    ),
    displayMedium: TextStyle(
      fontFamily: "Inter",
      fontSize: 24,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    ),
    displaySmall: TextStyle(
      fontFamily: "Inter",
      fontSize: 20,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    ),
    headlineMedium: TextStyle(
      fontFamily: "Inter",
      fontSize: 16,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    ),
    headlineSmall: TextStyle(
      fontFamily: "Inter",
      fontSize: 14,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    ),
    titleLarge: TextStyle(
        fontFamily: "Inter",
        fontSize: 12,
        color: Colors.black,
        fontWeight: FontWeight.w400),
    bodyLarge: TextStyle(
      fontFamily: "Inter",
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    bodyMedium: TextStyle(
      fontFamily: "Inter",
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    titleMedium: TextStyle(
      fontFamily: "Inter",
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    titleSmall: TextStyle(
      fontFamily: "Inter",
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      fontFamily: "Inter",
      color: Colors.black,
    ),
    labelLarge: TextStyle(
      fontFamily: "Inter",
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
  ),
);
