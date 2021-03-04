import 'package:flutter/material.dart';

class CardsView extends StatefulWidget {
  static const routeName = '/home';

  CardsView({Key key}) : super(key: key);

  @override
  _CardsViewState createState() => _CardsViewState();
}

class _CardsViewState extends State<CardsView> {

  TabController _controller;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(color: Colors.greenAccent,),
    );
  }
}