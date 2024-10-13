import 'package:flutter/material.dart';
import 'package:quran_app/core/assets_manger.dart';
import 'package:quran_app/core/routes_manger.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
   Future.delayed(Duration(seconds: 3),() {
     Navigator.pushReplacementNamed(context, RoutesManger.homeRoute);
   },);
    return Container(
      child: Image.asset(AssetsManger.lightSplash,fit: BoxFit.fill,),
    );
  }
}
