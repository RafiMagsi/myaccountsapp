import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_accounts/Settings/AppConstants.dart';

ThemeData themeData = ThemeData(
  primaryColor: AppConstants.appBgColor,
  primaryColorDark: AppConstants.appBorderGreyColor,
  accentColor: AppConstants.appDarkGreenColor,
  fontFamily: 'Helvetica',
  textTheme: TextTheme(
    headline6: TextStyle(
      color: AppConstants.appDarkGreenColor,
      fontWeight: FontWeight.bold,
    ),
    headline5: TextStyle(
      color: AppConstants.appDarkGreenColor,
      fontWeight: FontWeight.bold,
    ),
    headline4: TextStyle(
      color: AppConstants.appDarkGreenColor,
      fontWeight: FontWeight.bold,
    ),headline3: TextStyle(
    color: AppConstants.appDarkGreenColor,
    fontWeight: FontWeight.bold,
  ),
    subtitle1: TextStyle(
      fontWeight: FontWeight.bold,
    ),
    caption: TextStyle(
      fontWeight: FontWeight.bold,
      color: AppConstants.appDarkGreenColor,
    ),
  ),
);