import 'package:flutter/material.dart';
import 'data/capsule_data.dart';
import 'widgets/gridCell.dart';

class CapsuleColumns {
  static Row get() {
    var dataColumns = Capsules.get()
        .map(
          (capsule) => GridCell(
            height: 80,
            title: true,
            child: Center(
              child: Image.asset(
                'images/capsules/${capsule.mainImageFileName}',
                width: 60,
                height: 60,
              ),
            ),
          ),
        )
        .toList();

    dataColumns.insert(
        0,
        GridCell(
          height: 80,
          width: 160,
          title: true,
          child: FlatButton.icon(
              onPressed: () {},
              icon: Icon(Icons.explore_outlined),
              label: Text('Explore')),
        ));

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: dataColumns,
    );
  }
}
