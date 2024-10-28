import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/config/theme/my_theme.dart';
import 'package:quran_app/core/routes_manger.dart';
import 'package:quran_app/presentation/home/home_screen.dart';
import 'package:quran_app/presentation/home/screens/hadith_details_screen/hadith_details_screen.dart';
import 'package:quran_app/presentation/home/screens/splash/splash_screen.dart';
import 'package:quran_app/presentation/quran_details_screen/quran_details_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:quran_app/providers/quran_providers.dart';
import 'package:quran_app/providers/settings_providers.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<SettingProvider>(context);
    var themeProvider = Provider.of<SettingProvider>(context);
    return MaterialApp(
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'),
        Locale('ar'),
      ],
      locale: Locale(myProvider.currentLang),
      themeMode: themeProvider.currentTheme,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      routes: {
        RoutesManger.splashRoute: (_) => const SplashScreen(),
        RoutesManger.homeRoute: (_) => HomeScreen(),
        RoutesManger.quranDetailsRoute: (context) => ChangeNotifierProvider(
            create: (context) => QuranProvider(),
            child: QuranDetailsScreen()),
        RoutesManger.hadithDetailsRoute: (context) =>
            const HadithDetailsScreen(),
      },
      initialRoute: RoutesManger.splashRoute,
    );
  }
}
