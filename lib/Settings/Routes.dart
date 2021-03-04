import 'package:flutter/material.dart';
import 'package:my_accounts/Screens/HomeView.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  var routes = {
    HomeView.routeName: (context) => HomeView(),
  };
  WidgetBuilder builder = routes[settings.name];
  return MaterialPageRoute(builder: (ctx) => builder(ctx));
}
