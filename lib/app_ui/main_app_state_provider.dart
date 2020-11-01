import 'package:flutter/material.dart';
import 'package:nescap/application_state/nescap_logic.dart';
import 'package:provider/provider.dart';
import 'capsule_datasheet/capsule_datasheet_viewport.dart';

class MainAppStateProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => NesCapLogic(),
      child: CapsuleDataSheetViewport(),
    );
  }
}
