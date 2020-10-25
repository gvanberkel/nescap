import 'package:flutter/material.dart';
import 'package:nescap/state/nescap_logic.dart';
import 'package:provider/provider.dart';
import '../filters_dialog.dart';
import 'capsule_columns.dart';
import 'capsule_rows.dart';

class CapsuleGrid extends StatelessWidget {
  CapsuleGrid({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<NesCapLogic>(
      builder: (_, logic, __) {
        if (logic.ready) {
          var rows = CapsuleRows.get(logic);
          rows.insert(0, CapsuleColumns.get(logic));
          return Scaffold(
            body: SafeArea(
              child: Stack(
                children: [
                  InteractiveViewer(
                    constrained: false,
                    panEnabled: true,
                    scaleEnabled: true,
                    minScale: 0.8,
                    maxScale: 1.4,
                    child: Column(
                      children: rows,
                    ),
                  ),
                  if (logic.filtersVisible)
                    Positioned(
                      child: FiltersDialog(
                        logic: logic,
                      ),
                      top: 20,
                      left: 15,
                    ),
                ],
              ),
            ),
          );
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}
