import 'package:flutter/material.dart';
import 'package:quran_app/config/theme/my_theme.dart';
import 'package:quran_app/core/routes_manger.dart';
import 'package:quran_app/presentation/home/home_screen.dart';
import 'package:quran_app/presentation/home/screens/splash/splash_screen.dart';
import 'package:quran_app/presentation/quran_details_screen/quran_details_screen.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightMode,
      debugShowCheckedModeBanner: false,
      routes: {
        RoutesManger.splashRoute: (_) => const SplashScreen(),
        RoutesManger.homeRoute: (_) =>  HomeScreen(),
        RoutesManger.quranDetailsRoute:(context) => QuranDetailsScreen(),
      },
      initialRoute: RoutesManger.splashRoute,
    );
  }
}
