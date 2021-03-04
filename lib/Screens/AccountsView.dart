import 'package:flutter/material.dart';
import 'package:my_accounts/Models/AccountInfo.dart';
import 'package:my_accounts/Models/CardInfo.dart';
import 'package:my_accounts/Settings/AppConstants.dart';
import 'package:my_accounts/Widgets/AccountInfoWidget.dart';
import 'package:my_accounts/Widgets/ActionRowWidget.dart';

class AccountsView extends StatefulWidget {
  static const routeName = '/home';

  AccountsView({Key key}) : super(key: key);

  @override
  _AccountsViewState createState() => _AccountsViewState();
}

class _AccountsViewState extends State<AccountsView> {
  AppConstants constants;
  @override
  void initState() {
    super.initState();
    constants = AppConstants.shared;
  }

  @override
  Widget build(BuildContext context) {
    // Sample credit card object created
    CardInfo cardInfo1 =
    CardInfo(cardNumber: "1234 **** **** 4563", accountType: "Current Account", validityDate: "06/23", balance: "130,000,00", currency: "IQD");
    // Sample account info object created and card object passed in it
    AccountInfo accountInfo = AccountInfo(card: cardInfo1, address: "Al Nahda Branch - Dubai UAE", accountType: "Saving Account", currency: "IQD");

    return Scaffold(
      body: Container(
        color: Colors.transparent,
        child: Column(
          children: [
            AccountInfoWidget(accountInfo: accountInfo,),
            Container(
              padding: EdgeInsets.fromLTRB(constants.edgeDistance, constants.topGap, constants.edgeDistance, constants.topGap),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 10),
                    width: constants.edgeDistance * 0.8,
                    child: Center(
                      child: Divider(
                        height: 20,
                        color: AppConstants.appGreenColor,
                        thickness: 2.5,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Transfer Amount",
                      style: TextStyle(
                          fontSize: 16, fontFamily: AppConstants.fontTitillium, fontWeight: FontWeight.bold, color: AppConstants.appDarkGreenColor),
                    ),
                  ),
                ],
              ),
            ),
            // Custom widget to show action rows in accounts view
            ActionRowWidget(
              icon: Icons.account_balance_wallet_rounded,
              actionText: "Cash Transfer",
            ),
            ActionRowWidget(
              icon: Icons.person_pin_rounded,
              actionText: "Other accounts in same branch",
            ),
            ActionRowWidget(
              icon: Icons.history_rounded,
              actionText: "Between Own Accounts",
            ),
          ],
        ),
      ),
    );
  }
}
