import 'package:flutter/material.dart';

class Themes {
  final redTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
  );
  final blueTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
  );

  final darkTheme = ThemeData.dark().copyWith(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
  );
}
