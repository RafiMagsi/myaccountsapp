import 'package:flutter/material.dart';
import 'package:my_accounts/Screens/HomeView.dart';
import 'package:my_accounts/Settings/Routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: onGenerateRoute,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeView(), // HomeView is the start screen of our app
    );
  }
}
