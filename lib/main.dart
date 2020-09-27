import 'package:flutter/material.dart';
import 'package:nescap/theme/nescap_theme.dart';

import 'capsule_columns.dart';
import 'capsule_rows.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var nesCapTheme = NesCapTheme(isDark: true);

    return MaterialApp(
      title: 'NesCap Capsule Explorer',
      debugShowCheckedModeBanner: false,
      theme: nesCapTheme.themeData,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var rows = CapsuleRows.get();
    rows.insert(0, CapsuleColumns.get());

    return Scaffold(
      body: SafeArea(
        child: InteractiveViewer(
          constrained: false,
          panEnabled: true,
          scaleEnabled: true,
          minScale: 0.8,
          maxScale: 2.0,
          child: Column(
            children: rows,
          ),
        ),
      ),
    );
  }
}
