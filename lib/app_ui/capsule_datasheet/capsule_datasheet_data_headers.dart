import 'package:flutter/material.dart';
import 'package:nescap/app_ui/capsule_details/capsule_details.dart';
import 'package:nescap/app_ui/capsule_search/capsule_search_dialog.dart';
import 'package:nescap/application_state/nescap_logic.dart';
import 'package:provider/provider.dart';
import 'datasheet_cell.dart';

class CapsuleDataSheetHeaders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<NesCapLogic>(
      builder: (_, logic, __) {
        var dataColumns = logic.filteredCapsuleData
            .map(
              (capsule) => DataSheetCell(
                height: 80,
                title: true,
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        barrierDismissible: true,
                        useSafeArea: true,
                        barrierColor: Colors.transparent,
                        builder: (_) => CapsuleDetails(data: capsule),
                      );
                    },
                    child: Image.asset(
                      'images/capsules/${capsule.mainImageFileName}',
                      width: 60,
                      height: 60,
                    ),
                  ),
                ),
              ),
            )
            .toList();

        dataColumns.insert(
            0,
            DataSheetCell(
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
                    builder: (_) => CapsuleSearchDialog(logic: logic),
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
