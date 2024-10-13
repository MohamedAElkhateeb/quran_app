import 'package:flutter/material.dart';

class QuranItemWidget extends StatelessWidget {
  QuranItemWidget(
      {super.key, required this.suraItem, required this.versesNumber});

  String suraItem;
  String versesNumber;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(4),
              child: Text(
                versesNumber,
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          VerticalDivider(
            color: Theme.of(context).dividerColor,
            thickness: 3,
            width: 3,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(4),
              child: Text(
                suraItem,
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
