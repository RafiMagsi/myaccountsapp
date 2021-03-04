import 'package:flutter/material.dart';
import 'package:my_accounts/Widgets/AccountInfoWidget.dart';

class AccountsView extends StatefulWidget {
  static const routeName = '/home';

  AccountsView({Key key}) : super(key: key);

  @override
  _AccountsViewState createState() => _AccountsViewState();
}

class _AccountsViewState extends State<AccountsView> {

  TabController _controller;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(color: Colors.transparent,
      child: Column(
        children: [
          AccountInfoWidget()
        ],
      ),),
    );
  }
}