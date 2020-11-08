import 'package:flutter/material.dart';
import 'package:nescap/app_ui/capsule_datasheet/capsule_datasheet_viewport.dart';
import 'package:nescap/application_state/nescap_logic.dart';
import 'package:nescap/theme/nescap_theme.dart';
import 'package:provider/provider.dart';

import 'grid_of_capsules/grid_of_capsules.dart';

class MainAppBootstrap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    NesCapTheme.selectedColour = Theme.of(context).primaryColor.withOpacity(.3);

    return ChangeNotifierProvider(
      create: (_) => NesCapLogic(),
      child: Consumer<NesCapLogic>(
        builder: (_, logic, __) {
          return LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              logic.setCurrentResultsLayout(constraints);
              return logic.currentResultsLayout == ResultsLayout.DataSheet
                  ? CapsuleDataSheetViewport()
                  : GridOfCapsules();
            },
          );
        },
      ),
    );
  }
}
