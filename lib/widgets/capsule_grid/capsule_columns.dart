import 'package:flutter/material.dart';
import 'package:nescap/state/nescap_logic.dart';
import '../grid_cell.dart';

class CapsuleColumns {
  static Row get(NesCapLogic logic) {
    var dataColumns = logic.filteredCapsuleData
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
          width: 170,
          title: true,
          child: FlatButton.icon(
            onPressed: () {
              logic.filterData();
            },
            icon: Icon(Icons.explore_outlined),
            label: Text('Explore'),
          ),
        ));

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: dataColumns,
    );
  }
}
