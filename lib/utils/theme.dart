import 'package:app_task/utils/colors.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  fontFamily: "Montserrat",
  scaffoldBackgroundColor: Colors.white,
  primaryColor: kPrimaryColor,
  colorScheme: const ColorScheme.light(
    primary: kPrimaryColor,
    secondary: kSecondaryColor,
  ),
);
