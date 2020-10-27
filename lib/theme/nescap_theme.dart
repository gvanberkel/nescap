import 'package:flutter/material.dart';

class NesCapTheme {
  bool isDark;
  BuildContext context;
  Brightness brightness;

  NesCapTheme({@required this.context}) {
    this.brightness = Brightness.dark;
  }

  ThemeData get themeData {
    return ThemeData(
      primarySwatch: Colors.orange,
      brightness: this.brightness,
      platform: TargetPlatform.android,
      primaryColor: Colors.yellow.shade800,
    );
  }
}
