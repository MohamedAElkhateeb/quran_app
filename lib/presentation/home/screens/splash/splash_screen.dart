import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/core/assets_manger.dart';
import 'package:quran_app/core/routes_manger.dart';
import 'package:quran_app/providers/settings_providers.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<SettingProvider>(context);
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacementNamed(context, RoutesManger.homeRoute);
      },
    );
    return Container(
      child: Image.asset(
        myProvider.isLightTheme()
            ? AssetsManger.lightSplash
            : AssetsManger.darkSplash,
        fit: BoxFit.fill,
      ),
    );
  }
}
