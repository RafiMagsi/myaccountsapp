
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_accounts/Screens/AccountsView.dart';
import 'package:my_accounts/Screens/CardsView.dart';
import 'package:my_accounts/Settings/AppConstants.dart';

// This tab bar is in screen tab bar to show different views as tabs
class TabBarManager extends StatelessWidget {
  final TabController _controller;

  TabBarManager(this._controller);

  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        new Container(
          decoration: new BoxDecoration(color: AppConstants.appBgColor),
          child: new TabBar(
            indicator: UnderlineTabIndicator(
                borderSide: BorderSide(width: 2.5, color: AppConstants.appLightGreenColor),
                insets: EdgeInsets.symmetric(horizontal:60.0)
            ),
            labelColor: AppConstants.appLightGreenColor,
            unselectedLabelColor: AppConstants.appDarkGreenColor,
            controller: _controller,
            tabs: [ // Names of the tabs
              new Tab(
                child: Text(AppConstants.sAccounts, style: TextStyle( fontWeight: FontWeight.w800, fontSize: 16),),
              ),
              new Tab(
                child: Text(AppConstants.sCards, style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16),),
              ),
            ],
          ),
        ),
        new Container(
          height: AppConstants.shared.screenHeight,
          child: new TabBarView(
            controller: _controller,
            children: <Widget>[ // Views of the tabs
              AccountsView(),
              CardsView(),
            ],
          ),
        ),
      ],
    );
  }
}
