import 'package:flutter/material.dart';

const inputDecorationTheme = InputDecorationTheme(
  focusColor: Colors.white,
  prefixIconColor: Colors.white,
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
);
