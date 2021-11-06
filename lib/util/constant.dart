import 'package:flutter/material.dart';

const primaryColor = Color(0xFF00BF6D);
const secondaryColor = Color(0xFFFE9901);
const contentColorLightTheme = Color(0xFF1D1D35);
const contentColorDarkTheme = Color(0xFFF5FCF9);
const kWarninngColor = Color(0xFFF3BB1C);
const errorColor = Color(0xFFF03738);

const kDefaultPadding = 20.0;
const backgroundColor = Color(0xFF202020);
const authPrimaryColor = Color(0xFFFFBD73);

const bluishClr = Color(0xFF4e5ae8);
const yellowClr = Color(0XFFFFB746);
const pinkClr = Color(0XFFff4667);
const white = Colors.white;
const primaryClr = bluishClr;
const darkGreyClr = Color(0xFF121212);
const darkHeaderClr = Color(0xFF424242);

class Themes {
  static final light =
      ThemeData(primaryColor: primaryClr, brightness: Brightness.light);
  static final dark = ThemeData(
    primaryColor: darkGreyClr,
    brightness: Brightness.dark,
  );
}
