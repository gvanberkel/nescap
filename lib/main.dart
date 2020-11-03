import 'package:flutter/material.dart';
import 'package:nescap/theme/nescap_theme.dart';

import 'app_ui/main_app_bootstrap.dart';
void main() {
  runApp(NesCapApp());
}

class NesCapApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var nesCapTheme = NesCapTheme(context: context);

    return MaterialApp(
      title: 'NesCap Capsule Explorer',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: nesCapTheme.themeData,
      home: MainAppBootstrap(),
    );
  }
}
