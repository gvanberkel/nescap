import 'package:flutter/material.dart';
import 'package:nescap/capsule_data/capsule_data_schema.dart';

class CupSizeWidget extends StatelessWidget {
  final CapsuleData capsule;
  final bool showLabels;
  const CupSizeWidget({Key key, @required this.capsule, @required this.showLabels})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (capsule.cupSize.ristretto) SingleCupSize(imagePath: 'images/cupsize/ristretto.png',showLabels: showLabels, labelName: 'r'),
        if (capsule.cupSize.espresso) SingleCupSize(imagePath: 'images/cupsize/espresso.png',showLabels: showLabels, labelName: 'e'),
        if (capsule.cupSize.lungo) SingleCupSize(imagePath: 'images/cupsize/lungo.png',showLabels: showLabels, labelName: 'L',),
        if (capsule.cupSize.milk) SingleCupSize(imagePath: 'images/cupsize/milk.png', showLabels: showLabels, labelName: 'm',)
      ],
    );
  }
}

class SingleCupSize extends StatelessWidget {
  final String imagePath;
  final bool showLabels;
  final double width;

  final String labelName;

  const SingleCupSize({Key key, @required this.imagePath, this.showLabels = true, this.width = 25, @required this.labelName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(imagePath, width: width),
        if (showLabels)
          Padding(
            padding: const EdgeInsets.only(right: 3),
            child:
            Text(labelName, style: TextStyle(color: Colors.grey, fontSize: 12)),
          ),
      ],
    );
  }
}