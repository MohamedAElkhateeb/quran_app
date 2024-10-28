import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../presentation/home/tabs/hadeth_tab/hadeth_tab.dart';

class HadithProvider extends ChangeNotifier {
  List<Hadith> allHadithList = [];

  void loadHadithFile() async {
    String ahadithFile =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> ahadithList = ahadithFile.trim().split('#');
    for (int i = 0; i < ahadithList.length; i++) {
      List<String> hadithItem = ahadithList[i].trim().split('\n');
      String title = hadithItem[0];
      hadithItem.removeAt(0);
      String content = hadithItem.join('\n');
      Hadith hadith = Hadith(title: title, content: content);
      allHadithList.add(hadith);
    }
    notifyListeners();
  }
}
