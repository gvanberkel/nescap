import 'package:flutter/material.dart';

import 'capsule_columns.dart';
import 'capsule_rows.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NesCap Capsule Explorer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
          minScale: 0.5,
          maxScale: 2.0,
          alignPanAxis: true,
          child: Column(
            children: rows,
          ),
        ),
      ),
    );
  }
}
