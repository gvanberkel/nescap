import 'package:flutter/material.dart';
import 'package:nescap/theme/nescap_theme.dart';
import 'package:provider/provider.dart';
import 'state/nescap_logic.dart';
import 'widgets/capsule_grid/capsule_grid.dart';

void main() {
  runApp(NesCapApp());
}

class NesCapApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var nesCapTheme = NesCapTheme(isDark: true);

    return ChangeNotifierProvider(
      create: (_) => NesCapLogic(),
      child: MaterialApp(
        title: 'NesCap Capsule Explorer',
        debugShowCheckedModeBanner: false,
        theme: nesCapTheme.themeData,
        home: CapsuleGrid(),
      ),
    );
  }
}
