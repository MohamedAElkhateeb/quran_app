import 'package:flutter/material.dart';
import 'package:quran_app/core/colors_manger.dart';
import 'package:quran_app/core/string_manger.dart';

class QuranTabHeaderWidget extends StatelessWidget {
  const QuranTabHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border.symmetric(
              horizontal:
              BorderSide(width: 3, color: ColorsManger.yellow))),
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
              child: Text(
                StringsManger.versenNumberLabel,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
            // Container(color: ColorsManger.goldColor,
            // width: 3,),
            VerticalDivider(
              color: Theme.of(context).dividerColor,
              width: 3,
              thickness: 3,
            ),
            Expanded(
              child: Text(
                StringsManger.chapterNumberLabel,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.labelMedium,
              ),
            )
          ],
        ),
      ),
    );
  }
}
