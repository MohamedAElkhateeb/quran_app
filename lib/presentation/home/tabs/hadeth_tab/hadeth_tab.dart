import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/core/assets_manger.dart';
import 'package:quran_app/presentation/home/tabs/hadeth_tab/widgets/hadith_header_widget.dart';
import 'package:quran_app/presentation/home/tabs/hadeth_tab/widgets/hadith_title_widget.dart';

import '../../../../providers/hadith_provider.dart';

class HadithTab extends StatefulWidget {
  HadithTab({super.key});

  @override
  State<HadithTab> createState() => _HadithTabState();
}

class _HadithTabState extends State<HadithTab> {
  //List<Hadith> allHadithList = [];

  @override
  Widget build(BuildContext context) {
    HadithProvider hadithProvider = Provider.of(context);
    if (hadithProvider.allHadithList.isEmpty) {
      hadithProvider.loadHadithFile(); // is async fuc -> Non Blocking
    }
    return Container(
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Image.asset(AssetsManger.hadithHeaderImage),
          ),
          const HadithHeaderWidget(),
          Expanded(
              flex: 3,
              child:hadithProvider.allHadithList.isEmpty
                  ? Center(
                      child: CircularProgressIndicator(
                        color: Theme.of(context).dividerColor,
                      ),
                    )
                  : ListView.separated(
                      itemBuilder: (context, index) =>
                          HadithTitleWidget(hadith:hadithProvider.allHadithList[index]),
                      separatorBuilder: (context, index) => Divider(
                            color: Theme.of(context).dividerColor,
                            thickness: 3,
                            height: 10,
                          ),
                      itemCount: hadithProvider.allHadithList.length))
        ],
      ),
    );
  }


}

class Hadith {
  String title;
  String content;

  Hadith({required this.title, required this.content});
}
