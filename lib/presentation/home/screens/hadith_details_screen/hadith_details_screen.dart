import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/config/theme/my_theme.dart';
import 'package:quran_app/core/assets_manger.dart';
import 'package:quran_app/core/string_manger.dart';

import '../../../../providers/settings_providers.dart';
import '../../tabs/hadeth_tab/hadeth_tab.dart';


class HadithDetailsScreen extends StatelessWidget {
  const HadithDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<SettingProvider>(context);
    Hadith hadith = ModalRoute.of(context)?.settings.arguments as Hadith;

    return Container(
      decoration:  BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                myProvider.isLightTheme()
                    ? AssetsManger.lightMainBg
                    : AssetsManger.darkMainBg,
              ),)),
      child: Scaffold(
        appBar: AppBar(
          title:  Text(StringsManger.appTitle),
        ),
        body: Card(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: SingleChildScrollView(
                child: Column(children: [
                  Text(
                    hadith.title,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: Colors.white),
                  ),
                  Divider(
                    color: Colors.white,
                    thickness: 1,
                    indent: 28,
                    endIndent: 28,
                  ),
                  Text(
                    hadith.content,
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium,
                  )
                ]),
              ),
            )),
      ),
    );
  }
}