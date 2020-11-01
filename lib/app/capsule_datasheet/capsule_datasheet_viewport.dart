import 'package:flutter/material.dart';
import 'package:nescap/state/nescap_logic.dart';
import 'package:provider/provider.dart';
import 'capsule_datasheet_data.dart';

class CapsuleDataSheetViewport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<NesCapLogic>(
      builder: (_, logic, __) {
        if (logic.ready) {
          return Scaffold(
            body: SafeArea(
              child: InteractiveViewer(
                constrained: false,
                panEnabled: true,
                scaleEnabled: false,
                child: CapsuleDataSheetData(),
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
