import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// This static class manages all the app constants
class AppConstants {
  // creating singleton
  static final AppConstants _singleton = AppConstants._internal();

  factory AppConstants() => _singleton;

  AppConstants._internal();

  static AppConstants get shared => _singleton;

  // Screen size constants
  double screenHeight;
  double screenWidth;
  double fieldGap;
  double topGap;
  double edgeDistance;

  // Initializing the settings depending on the app context and device resolution
  void setAppSettings(BuildContext context) {
    this.screenHeight = MediaQuery.of(context).size.height;     // Screen height
    this.screenWidth = MediaQuery.of(context).size.width;       // Screen width
    this.fieldGap = screenHeight * 0.0225;                      // Custom field gap to be used in forms
    this.topGap = screenHeight * 0.02;                          // Constant to set top padding or margin of a widget
    this.edgeDistance = edgeDistance = screenWidth * 0.08;      // Constant to space from edges of the widget
  }

  // Color constants
  static Color appBgColor = Colors.white;
  static Color appBorderGreyColor = const Color(0xFF4E4D51);
  static Color appGreenColor = const Color(0xFF1F7245);
  static Color appLightGreenColor = const Color(0xFF098B5C);
  static Color appDarkGreenColor = const Color(0xFF214134);
  static Color appBorderYellowColor = const Color(0xFF214134);
  static Color appCardGreenColor = const Color(0xFF098b5C);
  static Color appCardGoldColor = const Color(0xFFD1AF5A);
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
