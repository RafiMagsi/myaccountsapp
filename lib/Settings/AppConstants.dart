import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppConstants {
  // singleton
  static final AppConstants _singleton = AppConstants._internal();

  factory AppConstants() => _singleton;

  AppConstants._internal();

  static AppConstants get shared => _singleton;

  // Screen size constants
  double screenHeight;
  double screenWidth;
  double fieldGap;
  double topGap;
  double fieldHeight52;
  double fieldHeight45;
  double edgeDistance;

  void setAppSettings(BuildContext context) {
    this.screenHeight = MediaQuery.of(context).size.height;
    this.screenWidth = MediaQuery.of(context).size.width;
    this.fieldGap = screenHeight * 0.0225;
    this.topGap = screenHeight * 0.02;
    this.edgeDistance = edgeDistance = screenWidth * 0.08;
    this.fieldHeight52 = 52;
    this.fieldHeight45 = 45;
  }

  // Color constants
  static Color appBgColor = const Color(0xFFFFFFFF);
  static Color appBorderGreyColor = const Color(0xFF4E4D51);
  static Color appGreenColor = const Color(0xFF1F7245);
  static Color appLightGreenColor = const Color(0xFF098B5C);
  static Color appDarkGreenColor = const Color(0xFF214134);
  static Color appBorderYellowColor = const Color(0xFF214134);
  static Color bmtWhiteColor50Percent = const Color.fromRGBO(255, 255, 255, 0.5);
  static Color bmtTransparent = Colors.transparent;

  // Images Paths
  static String bmtImageLocationArrow = "assets/home/location_arrow.png";

  // General String Constants
  static String appName = "My Accounts";
  static String sAccounts = "Accounts";
  static String sCards = "Cards";

  //Fonts
  static String fontTitillium = "Titillium";
}
