import 'package:flutter/material.dart';
import 'package:my_accounts/Screens/HomeView.dart';
import 'package:my_accounts/Settings/AppConstants.dart';
import 'package:my_accounts/Settings/ScreenManager.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _createHeader(),
          Divider(),
          _createDrawerItem(
              icon: Icons.home, text: 'Home', onTap: () => ScreenManager.gotoScreenByRouteName(context, HomeView.routeName, data: null)),
          Divider(),
        ],
      ),
    );
  }

  Widget _createHeader() {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(color: AppConstants.appDarkGreenColor),
        child: Stack(children: <Widget>[
          Positioned(
              bottom: 12.0,
              left: 16.0,
              child: Text(AppConstants.appName, style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w500))),
        ]));
  }

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
