import 'package:flutter/material.dart';
import 'package:my_accounts/Screens/HomeView.dart';
import 'package:my_accounts/Settings/AppConstants.dart';
import 'package:my_accounts/Settings/ScreenManager.dart';

// The app drawer to show side menu, currently it has only home view item in it
// We can add other later according to the requirements
class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _createHeader(),
          Divider(),
          // Home drawer item created with onTap event to take user to home view
          _createDrawerItem(
              icon: Icons.home, text: 'Home', onTap: () => ScreenManager.gotoScreenByRouteName(context, HomeView.routeName, data: null)),
          Divider(),
        ],
      ),
    );
  }

  Widget _createHeader() { // Header section of the drawer
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(color: AppConstants.appDarkGreenColor),
        child: Stack(children: <Widget>[
          Positioned( // Application name
              bottom: 12.0,
              left: 16.0,
              child: Text(AppConstants.appName, style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w500))),
        ]));
  }

  // Widget for creating drawer items connected to views
  Widget _createDrawerItem({IconData icon, String text, GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon, color: AppConstants.appDarkGreenColor),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
