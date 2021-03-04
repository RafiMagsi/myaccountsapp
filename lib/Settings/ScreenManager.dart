
import 'package:flutter/material.dart';
import 'package:my_accounts/Screens/HomeView.dart';

// Screen manager is used to manage navigation of screen when required
enum Screen {
  HOME_VIEW,
}

class ScreenManager {
  static gotoScreen(BuildContext context, Screen screen, [Map<String, String> data]) {
    Widget screenToGo = getScreenToGo(screen, data);

    navigateToScreen(context, screenToGo);
  }

  // Takes view name to navigate to the view
  static navigateToScreen(context, Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
  }

  // Takes route name to navigate to the view
  static gotoScreenByRouteName(BuildContext context, String routeName, {Object data}) {
    Navigator.pushNamed(
      context,
      routeName,
      arguments: data,
    );
  }

  // Manages the basic settings for different view if required to modify or check the data before navigating to a screen
  static Widget getScreenToGo(Screen screen, [Map<String, String> data]) {
    Widget screenToGo;
    switch (screen) {
      case Screen.HOME_VIEW:
        {
          screenToGo = HomeView();
        }
        break;
    }
    return screenToGo;
  }
}