import 'package:flutter/material.dart';
import 'package:my_accounts/Screens/HomePage.dart';
import 'package:my_accounts/Settings/AppConstants.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  var routes = {
    HomePage.routeName: (context) => HomePage(),
  };
  WidgetBuilder builder = routes[settings.name];
  return MaterialPageRoute(builder: (ctx) => builder(ctx));
}
