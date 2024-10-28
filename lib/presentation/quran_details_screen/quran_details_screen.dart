import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/core/assets_manger.dart';
import 'package:quran_app/presentation/quran_details_screen/widgets/sura_verses_widget.dart';

import 'package:quran_app/providers/settings_providers.dart';

import '../../providers/quran_providers.dart';
import '../home/tabs/quran_tab/widgets/quran_item_widget.dart';

class QuranDetailsScreen extends StatelessWidget {
  QuranDetailsScreen({super.key});

  // List<String> verses = [];
  @override
  Widget build(BuildContext context) {
    QuranProvider quranProvider = Provider.of(context);
    var myProvider = Provider.of<SettingProvider>(context);
    SuraItem suraItem = ModalRoute.of(context)?.settings.arguments as SuraItem;
    if (quranProvider.verses.isEmpty) {
      quranProvider.readSuraVerses(suraItem.index + 1);
    }
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: myProvider.isLightTheme()
              ? const AssetImage(AssetsManger.lightMainBg)
              : const AssetImage(AssetsManger.darkMainBg),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            suraItem.suraName,
          ),
        ),
        body: quranProvider.verses.isEmpty
            ? Center(
                child: CircularProgressIndicator(
                  color: Theme.of(context).dividerColor,
                ),
              )
            : ListView.builder(
                itemCount: quranProvider.verses.length,
                itemBuilder: (context, index) {
                  return SuraVersesWidget(verse: quranProvider.verses[index]);
                },
              ),
      ),
    );
  }
}
