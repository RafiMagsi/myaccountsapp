
import 'package:flutter/material.dart';
import 'package:my_accounts/Screens/HomeView.dart';

enum Screen {
  HOME_VIEW,
}

class ScreenManager {
  static gotoScreen(BuildContext context, Screen screen, [Map<String, String> data]) {
    Widget screenToGo = getScreenToGo(screen, data);

    navigateToScreen(context, screenToGo);
  }

  static navigateToScreen(context, Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
  }

  static gotoScreenByRouteName(BuildContext context, String routeName, {Object data}) {
    Navigator.pushNamed(
      context,
      routeName,
      arguments: data,
    );
  }

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