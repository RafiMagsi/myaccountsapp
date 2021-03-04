import 'package:flutter/material.dart';
import 'package:my_accounts/Models/CardInfo.dart';
import 'package:my_accounts/Settings/AppConstants.dart';
import 'package:my_accounts/Widgets/CardWidget.dart';

class CardsView extends StatefulWidget {
  static const routeName = '/home';

  CardsView({Key key}) : super(key: key);

  @override
  _CardsViewState createState() => _CardsViewState();
}

class _CardsViewState extends State<CardsView> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Two sample credit cards created
    CardInfo cardInfo1 =
        CardInfo(cardNumber: "1234 **** **** 4563", accountType: "Current Account", validityDate: "06/23", balance: "130,000,00", currency: "IQD");
    CardInfo cardInfo2 =
        CardInfo(cardNumber: "4132 **** **** 5578", accountType: "Current Account", validityDate: "06/23", balance: "220,000,00", currency: "IQD");
    return Scaffold(
      body: Container(
        color: Colors.transparent,
        child: Column(
          children: [ // Card Widget takes CardInfo and creates a dynamic card widget
            CardWidget(
              cardData: cardInfo1,
              cardColor: AppConstants.appCardGreenColor,
            ),
            CardWidget(
              cardData: cardInfo2,
              cardColor: AppConstants.appCardGoldColor,
            ),
          ],
        ),
      ),
    );
  }
}
