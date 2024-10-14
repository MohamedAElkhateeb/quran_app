import 'package:flutter/material.dart';
import 'package:quran_app/core/colors_manger.dart';

class MyTheme {
  static ThemeData lightMode = ThemeData(
      cardTheme: CardTheme(
        margin: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 6,
        ),
        color: ColorsManger.goldColor.withOpacity(.7),
        elevation: 14,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedIconTheme: IconThemeData(size: 35),
          backgroundColor: ColorsManger.goldColor,
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
      dividerColor: ColorsManger.goldColor,
      textTheme: const TextTheme(
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
          )));
}
