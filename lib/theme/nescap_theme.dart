import 'package:flutter/material.dart';

class NesCapTheme {
  bool isDark;

  NesCapTheme({@required this.isDark});

  ThemeData get themeData {
    var t = ThemeData.from(
      textTheme: _nescapTextTheme(),
      colorScheme: _nescapColorScheme(),
    ).copyWith(
      inputDecorationTheme: _nescapInputDecorationTheme(),
    );

    return t;
  }

  InputDecorationTheme _nescapInputDecorationTheme() {
    return ThemeData.dark().inputDecorationTheme.copyWith();
  }

  TextTheme _nescapTextTheme() {
    return ThemeData.dark().textTheme.copyWith(
          bodyText2: TextStyle(fontSize: 16),
        );
  }

  ColorScheme _nescapColorScheme() {
    return ThemeData.dark().colorScheme.copyWith();
  }
}
