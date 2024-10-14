import 'package:flutter/material.dart';
import 'package:quran_app/core/routes_manger.dart';

class QuranItemWidget extends StatelessWidget {
  QuranItemWidget({super.key, required this.suraItem});

  SuraItem suraItem;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, RoutesManger.quranDetailsRoute,
            arguments: suraItem);
      },
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  suraItem.versesNumber,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ),
            ),
            VerticalDivider(
              color: Theme.of(context).dividerColor,
              width: 3,
              thickness: 3,
            ),
            Expanded(
              child: Text(
                suraItem.suraName,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SuraItem {
  String suraName;
  String versesNumber;
  int index;

  SuraItem(
      {required this.versesNumber,
        required this.suraName,
        required this.index});
}