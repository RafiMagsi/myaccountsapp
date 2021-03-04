import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_accounts/Models/AccountInfo.dart';
import 'package:my_accounts/Settings/AppConstants.dart';

// Shows the account info for Account tab in home view
class AccountInfoWidget extends StatefulWidget {

  // AccountInfo object should be passed to show the widget dynamically
  final AccountInfo accountInfo;

  // accountInfo as a names parameter
  AccountInfoWidget({this.accountInfo});

  _AccountInfoWidgetState createState() => _AccountInfoWidgetState();
}

class _AccountInfoWidgetState extends State<AccountInfoWidget> {

  AppConstants constants = AppConstants();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(constants.edgeDistance*0.2, constants.topGap, constants.edgeDistance*0.2, constants.topGap),
      child: Container(
        width: constants.screenWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: const Color(0x29000000),
              offset: Offset(0, 0),
              blurRadius: 10,
            ),
          ],
        ),
        padding: EdgeInsets.fromLTRB(constants.edgeDistance, constants.topGap, constants.edgeDistance, constants.topGap),
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.accountInfo.card.cardNumber,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppConstants.appDarkGreenColor,
                      fontSize: 16,
                      fontFamily: AppConstants.fontTitillium,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    "Card Valid Through",
                    style: TextStyle(
                      color: AppConstants.appDarkGreenColor,
                      fontSize: 14,
                      fontFamily: AppConstants.fontTitillium,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(0, constants.topGap * 0.5, 0, 0),
                    child: Text(
                      widget.accountInfo.address,
                      style: TextStyle(
                        color: AppConstants.appDarkGreenColor,
                        fontSize: 14,
                        fontFamily: AppConstants.fontTitillium,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      widget.accountInfo.card.validityDate,
                      style: TextStyle(
                        color: AppConstants.appDarkGreenColor,
                        fontSize: 14,
                        fontFamily: AppConstants.fontTitillium,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, constants.topGap, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Text(
                          widget.accountInfo.card.balance,
                          style: TextStyle(
                            color: AppConstants.appGreenColor,
                            fontSize: 20,
                            fontFamily: AppConstants.fontTitillium,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          widget.accountInfo.card.currency,
                          style: TextStyle(
                            color: AppConstants.appGreenColor,
                            fontSize: 12,
                            fontFamily: AppConstants.fontTitillium,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    child: Text(
                      widget.accountInfo.accountType,
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        color: AppConstants.appGreenColor,
                        fontSize: 14,
                        fontFamily: AppConstants.fontTitillium,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
