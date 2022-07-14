import 'package:flutter/material.dart';

final themeData = ThemeData(
  primaryTextTheme: TextTheme(),
  inputDecorationTheme: const InputDecorationTheme(
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white,
      ),
      borderRadius: BorderRadius.all(Radius.circular(25)),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(25)),
      borderSide: BorderSide(
        color: Colors.white,
      ),
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white,
      ),
    ),
    constraints: BoxConstraints(
      maxWidth: 300,
      maxHeight: 50,
    ),
  ),
  hintColor: Colors.white,
  textTheme: TextTheme(
    headline5: TextStyle(color: Colors.white),
    bodyText2: TextStyle(color: Colors.white),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.greenAccent,
    shadowColor: Colors.transparent,
  ),
  backgroundColor: Colors.green,
  primaryColor: Colors.white,
);