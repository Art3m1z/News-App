import 'package:flutter/material.dart';

const error = Color(0xFFEC4A4A);
const primary = Color(0xFFC33232);
const background = Color(0xFFFFFFFF);
const labelColor = Color(0xFF908F9C);
const surface = Color(0xFF333333);
const fontColor = Color(0xFF242424);


ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: background,
    fontFamily: 'Muli',
    appBarTheme: appBarTheme()
  );
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    color: background,
    elevation: 0,
    centerTitle: true,
    iconTheme: IconThemeData(color: surface),
    titleTextStyle: TextStyle(color: fontColor, fontSize: 15)
  );
}