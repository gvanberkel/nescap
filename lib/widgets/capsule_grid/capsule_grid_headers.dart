import 'package:flutter/material.dart';
import 'package:nescap/state/nescap_logic.dart';
import 'package:nescap/widgets/filters_dialog.dart';
import 'package:provider/provider.dart';
import 'grid_cell.dart';

class CapsuleGridHeaders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<NesCapLogic>(
      builder: (_, logic, __) {
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
                  showDialog(
                    context: context,
                    barrierDismissible: true,
                    useSafeArea: true,
                    barrierColor: Colors.transparent,
                    builder: (_) => FiltersDialog(logic: logic),
                  );

                  logic.showFilters();
                },
                icon: Icon(Icons.explore_outlined),
                label: Text('Explore'),
              ),
            ));

        return Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: dataColumns,
        );
      },
    );
  }
}
