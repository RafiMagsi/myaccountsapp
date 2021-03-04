import 'package:flutter/material.dart';
import 'package:my_accounts/Manager/AppDrawer.dart';
import 'package:my_accounts/Manager/TabBarManager.dart';
import 'package:my_accounts/Settings/AppConstants.dart';

class HomeView extends StatefulWidget {
  static const routeName = '/home';

  HomeView({Key key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

// SingleTickerProviderStateMixin is used to help TabManager, it active state of the view
class _HomeViewState extends State<HomeView> with SingleTickerProviderStateMixin{

  // TabController is required to manage different tabs
  TabController _controller;
  AppConstants constants = AppConstants();

  @override
  void initState() {
    // Passing this class in vsync as delegate of TabController
    _controller = new TabController(length: 2, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    // Initializing the main settings of the application
    constants.setAppSettings(context);

    return Scaffold(
      drawer: AppDrawer(), // To show side menu
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