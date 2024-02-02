import 'package:flutter/material.dart';

class MyAppTheme {
  static List<ThemeData> themes = [
    ThemeData(
      primaryColor: Colors.green,
      textTheme: const TextTheme(
        bodyMedium: TextStyle(fontSize: 20, color: Colors.black),
        bodyLarge: TextStyle(fontSize: 22, color: Colors.black),
        bodySmall: TextStyle(fontSize: 18, color: Colors.black),
      ),
      iconTheme: const IconThemeData(color: Colors.green, size: 26),
    ),
    ThemeData(
      primaryColor: Colors.red,
      textTheme: const TextTheme(
        bodyMedium: TextStyle(fontSize: 22, color: Colors.black),
        bodyLarge: TextStyle(fontSize: 24, color: Colors.black),
        bodySmall: TextStyle(fontSize: 18, color: Colors.black),
      ),
      iconTheme: const IconThemeData(color: Colors.green, size: 26),
    ),
  ];
}
