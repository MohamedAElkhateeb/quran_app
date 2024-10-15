import 'package:flutter/material.dart';
import 'package:quran_app/core/assets_manger.dart';
import 'package:quran_app/core/string_manger.dart';
import 'package:quran_app/presentation/home/tabs/hadeth_tab/hadeth_tab.dart';
import 'package:quran_app/presentation/home/tabs/quran_tab/quran_tab.dart';
import 'package:quran_app/presentation/home/tabs/radio_tab/radio_tab.dart';
import 'package:quran_app/presentation/home/tabs/sebha_tab/sebha_tab.dart';
import 'package:quran_app/presentation/home/tabs/setting_tab/setting_tab.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  List<Widget> tabs = [
    QuranTab(),
    HadithTab(),
    SebhaTab(),
    RadioTab(),
    SettingTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          AssetsManger.lightMainBg,
          fit: BoxFit.fill,
          width: double.infinity,
          height: double.infinity,
        ),
        Scaffold(
          appBar: AppBar(
            title: const Text(StringsManger.appTitle),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
              onTap: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
              type: BottomNavigationBarType.fixed,
              items: const [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage(AssetsManger.quranIcon)),
                    label: StringsManger.quranLabel),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage(AssetsManger.hadethIcon)),
                    label: StringsManger.hadethLabel),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage(AssetsManger.sebhaIcon)),
                    label: StringsManger.tasbehLabel),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage(AssetsManger.radioIcon)),
                    label: StringsManger.radioLabel),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    label: StringsManger.settingLabel),
              ]),
          body: tabs[selectedIndex],
        ),
      ],
    );
  }
}
