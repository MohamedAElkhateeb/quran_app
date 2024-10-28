import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/providers/settings_providers.dart';
import 'my_app/my_app.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) =>SettingProvider() ,
      child: const MyApp()));
}



