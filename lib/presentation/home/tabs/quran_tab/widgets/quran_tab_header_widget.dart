import 'package:flutter/material.dart';
import 'package:quran_app/core/colors_manger.dart';
import 'package:quran_app/core/string_manger.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class QuranTabHeaderWidget extends StatelessWidget {
  const QuranTabHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
          border: Border.symmetric(
              horizontal:
              BorderSide(width: 3, color: Theme.of(context).dividerColor))),
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
              child: Text(
                AppLocalizations.of(context)!.versesNumber,
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
                AppLocalizations.of(context)!.chapterName,
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
