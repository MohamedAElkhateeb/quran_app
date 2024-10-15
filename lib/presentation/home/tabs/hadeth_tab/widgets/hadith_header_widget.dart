import 'package:flutter/material.dart';
import 'package:quran_app/core/string_manger.dart';

class HadithHeaderWidget extends StatelessWidget {
  const HadithHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
        padding: EdgeInsets.symmetric(horizontal: 4.0),
        alignment: Alignment.center,
        width: double.infinity,
        decoration: BoxDecoration(border: Border.symmetric(
          horizontal: BorderSide(width: 3, color:Theme.of(context).primaryColor),),),
        child: Text(
          StringsManger.elHadithLabel,
          style: Theme
              .of(context)
              .textTheme
              .labelMedium,
        ));
  }
}
