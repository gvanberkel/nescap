import 'package:flutter/material.dart';

class ValueBar extends StatelessWidget {
  final int maxValue;
  final int value;

  ValueBar({Key key, this.maxValue, this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> list = [];

    if (value > 0) {
      list = List.generate(value, (index) => index)
          .map((e) => Padding(
                padding: const EdgeInsets.only(right: 2),
                child: Container(
                  width: 5,
                  height: 5,
                  color: Colors.grey.shade200,
                ),
              ))
          .toList();

      list.add(Padding(
        padding: const EdgeInsets.only(left: 4, right: 6),
        child: Text(value.toString(), style: TextStyle(color: Colors.white)),
      ));

      List<Widget> endDots = List.generate(maxValue - value, (index) => index)
          .map((e) => Padding(
                padding: const EdgeInsets.only(right: 2),
                child: Container(
                  width: 5,
                  height: 5,
                  color: Colors.grey.shade600,
                ),
              ))
          .toList();

      list.addAll(endDots);
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: list,
    );
  }
}
