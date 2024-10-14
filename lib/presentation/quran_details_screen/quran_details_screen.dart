import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran_app/core/assets_manger.dart';
import 'package:quran_app/presentation/quran_details_screen/widgets/sura_verses_widget.dart';
import 'package:quran_app/presentation/home/tabs/quran_tab/widgets/quran_item_widget.dart';

class QuranDetailsScreen extends StatefulWidget {
  QuranDetailsScreen({super.key});

  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    SuraItem suraItem = ModalRoute.of(context)?.settings.arguments as SuraItem;
    if (verses.isEmpty) readSuraVerses(suraItem.index + 1);
    return Container(
      decoration:  const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AssetsManger.lightMainBg),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
            title: Text(suraItem.suraName),
            automaticallyImplyLeading: false,
            leading: IconButton(
              color: Colors.black,
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            )),
        body: verses.isEmpty
            ? CircularProgressIndicator()
            : ListView.builder(
          itemCount: verses.length,
          itemBuilder: (context, index) {
            return SuraVersesWidget(verse: verses[index]);
          },
        ),
      ),
    );
  }

  void readSuraVerses(int index) async {
    String fileContent = await rootBundle.loadString("assets/files/$index.txt");
    verses = fileContent.trim().split('\n');
    setState(() {});
  }
}