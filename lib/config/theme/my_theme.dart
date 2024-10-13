import 'package:flutter/material.dart';
import 'package:quran_app/core/colors_manger.dart';

class MyTheme {
  static ThemeData lightMode = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedIconTheme: IconThemeData(size: 35),
        backgroundColor:  ColorsManger.goldColor,
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
    textTheme: const TextTheme(labelMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),

    titleMedium:TextStyle(
        fontSize: 19,
        fontWeight: FontWeight.w400,
        color: ColorsManger.goldColor,)
    )
  );
}
