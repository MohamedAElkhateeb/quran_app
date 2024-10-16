import 'package:flutter/material.dart';
import 'package:quran_app/core/routes_manger.dart';
import 'package:quran_app/presentation/home/tabs/hadeth_tab/hadeth_tab.dart';

class HadithTitleWidget extends StatelessWidget {
  HadithTitleWidget({super.key, required this.hadith});

  Hadith hadith;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context, RoutesManger.hadithDetailsRoute,
          arguments: hadith, // run -time polymorphism
        );
      },
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            hadith.title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
      ),
    );
  }
}
