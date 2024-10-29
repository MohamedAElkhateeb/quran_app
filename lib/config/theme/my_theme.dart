import 'package:flutter/material.dart';
import 'package:quran_app/core/colors_manger.dart';

class MyTheme {
  static bool isDarkEnabled = true;
  static ThemeData lightTheme = ThemeData(
    indicatorColor: ColorsManger.lightPrimary,
    cardColor: ColorsManger.lightPrimary,
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: ColorsManger.lightPrimary,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12), topRight: Radius.circular(12))),
      elevation: 18,
    ),
    primaryColor: ColorsManger.lightPrimary,
    cardTheme: CardTheme(
      margin: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 6,
      ),
      color: ColorsManger.lightPrimary.withOpacity(.7),
      elevation: 14,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    ),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedIconTheme: IconThemeData(size: 35),
        backgroundColor: ColorsManger.lightPrimary,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,

      titleTextStyle: TextStyle(
        fontWeight: FontWeight.w600,
        color: Colors.black,
        fontSize: 30,
      ),
    ),
    dividerColor: ColorsManger.lightPrimary,
    textTheme: const TextTheme(
      labelLarge:TextStyle(
          fontSize: 21, fontWeight: FontWeight.w500, color: Colors.white),
      labelSmall: TextStyle(
        fontSize: 22,
        color: Colors.black,
        fontWeight: FontWeight.w600,
        letterSpacing: 0,
      ),
      bodyMedium: TextStyle(
          color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
      labelMedium: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w500,
      ),
      headlineMedium: TextStyle(
          color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400),
      headlineSmall: TextStyle(
          color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400),
      bodyLarge: TextStyle(
          color: Colors.white, fontSize: 21, fontWeight: FontWeight.w500),
    ),
  );
  static ThemeData darkTheme = ThemeData(

    cardColor: ColorsManger.darkPrimary,
    indicatorColor: ColorsManger.yellow,
    primaryColor: ColorsManger.darkPrimary,
    appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        titleTextStyle: TextStyle(
            fontSize: 30, fontWeight: FontWeight.w400, color: Colors.white),
        iconTheme: IconThemeData(color: Colors.white)),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xFF141A2E),
      selectedItemColor: ColorsManger.yellow,
      unselectedItemColor: Colors.white,
      selectedIconTheme: IconThemeData(size: 36),
      showSelectedLabels: true,
      showUnselectedLabels: false,
      // type: BottomNavigationBarType.fixed
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Color(0xFF141A2E),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12), topRight: Radius.circular(12))),
      elevation: 18,
    ),
    iconTheme:
        const IconThemeData(color: ColorsManger.yellow, size: 30, weight: 100),
    cardTheme: CardTheme(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      color: Color(0xFF141A2E),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 14,
    ),
    dividerColor: ColorsManger.yellow,
    textTheme: const TextTheme(
      labelLarge:TextStyle(
          fontSize: 21, fontWeight: FontWeight.w500, color: Colors.black),
        labelMedium: TextStyle(
            fontSize: 21, fontWeight: FontWeight.w500, color: Colors.white),
        titleMedium: TextStyle(
            fontSize: 19, fontWeight: FontWeight.w400, color: Colors.white),
        bodyMedium: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.w400,
            color: ColorsManger.yellow),
        headlineMedium: TextStyle(
            color: ColorsManger.yellow,
            fontSize: 16,
            fontWeight: FontWeight.w400),
        headlineSmall: TextStyle(
            color: ColorsManger.yellow,
            fontSize: 14,
            fontWeight: FontWeight.w400),
        bodyLarge: TextStyle(
            color: ColorsManger.yellow,
            fontSize: 21,
            fontWeight: FontWeight.w500),
        displayMedium: TextStyle(
            color: Colors.white, fontSize: 21, fontWeight: FontWeight.w500),
        labelSmall: TextStyle(
            fontSize: 22,
            color: ColorsManger.yellow,
            fontWeight: FontWeight.w400)),
  );
}
