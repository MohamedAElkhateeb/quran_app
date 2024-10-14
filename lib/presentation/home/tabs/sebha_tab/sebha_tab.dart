import 'package:flutter/material.dart';
import 'package:quran_app/core/assets_manger.dart';
import 'package:quran_app/core/colors_manger.dart';


class SebhaTab extends StatefulWidget {
  SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  double rotationAngle = 0.0;
  int counter = 0;
  int tasbeehIndex = 0;
  List<String> tsabeeh = [
    'سبحان الله',
    'الحمدلله',
    'لا اله الا الله',
    'الله اكبر'
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            top: 15,
            right: 150,
            child: Image.asset(
              AssetsManger.sebhaHeadLogo,
              height: 100,
              width: 65,
            )),
        Positioned(
            top: 88,
            right: 90,
            child: Transform.rotate(
              angle: rotationAngle,
              child: Image.asset(
                AssetsManger.sebhaBodyLogo,
                height: 212,
                width: 214,
              ),
            )),
        Positioned(
          top: 340,
          left: 96,
          child: Column(
            children: [
              Text('Number Of Tasbeehs',
                  style: Theme.of(context).textTheme.labelSmall),
              const SizedBox(
                height: 25,
              ),
              Container(
                alignment: Alignment.center,
                height: 81,
                width: 76,
                decoration: BoxDecoration(
                  color: ColorsManger.goldColor.withOpacity(.57),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Text(
                  '$counter',
                  style: TextStyle(fontSize: 22, color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              InkWell(
                onTap: tasbeehCount,
                child: Container(
                  alignment: Alignment.center,
                  width: 160,
                  height: 60,
                  decoration: BoxDecoration(
                    color: ColorsManger.goldColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Text(tsabeeh[tasbeehIndex]),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  void tasbeehCount() {
    ++counter;
    if (counter > 33) {
      counter = 0;
      tasbeehIndex++;
      if (tasbeehIndex > 3) {
        tasbeehIndex = 0;
      }
    }
    setState(() {
      rotationAngle += .25;
    });
  }
}