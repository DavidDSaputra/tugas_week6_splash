import 'package:flutter/material.dart';

ThemeData appTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
  useMaterial3: true,
  textTheme: const TextTheme(
    headlineLarge: TextStyle(fontWeight: FontWeight.w700, letterSpacing: -0.2),
    titleMedium: TextStyle(fontWeight: FontWeight.w600),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(horizontal: 14, vertical: 12),
    border: OutlineInputBorder(),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 2, color: Colors.blue),
    ),
  ),
);
