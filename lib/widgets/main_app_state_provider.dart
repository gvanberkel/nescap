import 'package:flutter/material.dart';
import 'package:nescap/state/nescap_logic.dart';
import 'package:provider/provider.dart';

import 'capsule_grid/capsule_grid_viewport.dart';

class MainAppStateProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => NesCapLogic(),
      child: CapsuleGridViewport(),
    );
  }
}
