import 'package:flutter/material.dart';
import 'package:my_accounts/Manager/AppDrawer.dart';
import 'package:my_accounts/Manager/TabBarManager.dart';
import 'package:my_accounts/Settings/AppConstants.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home';

  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{

  TabController _controller;
  AppConstants constants = AppConstants();

  @override
  void initState() {
    _controller = new TabController(length: 2, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    constants.setAppSettings(context);

    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppConstants.appDarkGreenColor),
        centerTitle: false,
        backgroundColor: AppConstants.appBgColor,
        shadowColor: Colors.transparent,
        title: Text(AppConstants.appName, style: TextStyle(color: AppConstants.appDarkGreenColor, fontWeight: FontWeight.w700)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _buttonAction,
        backgroundColor: AppConstants.appGreenColor,
        child: Icon(Icons.add)
      ),
      body: TabBarManager(_controller),
    );
  }

  void _buttonAction() {
    print("Add button tapped");
  }
}