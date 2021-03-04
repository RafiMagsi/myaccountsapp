import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_accounts/Models/CardInfo.dart';
import 'package:my_accounts/Settings/AppConstants.dart';

// CardWidget is a dynamic widget, it requires a CardInfo model object
class CardWidget extends StatefulWidget {
  // Takes the CardInfo model object
  final CardInfo cardData;
  // Takes the color object for card color
  final Color cardColor;
  // Named parameters
  CardWidget({this.cardData, this.cardColor});

  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  double imageSize;

  AppConstants constants = AppConstants();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(constants.edgeDistance*0.2, constants.topGap, constants.edgeDistance*0.2, constants.topGap),
      child: Container(
        width: constants.screenWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: widget.cardColor,
          boxShadow: [
            BoxShadow(
              color: const Color(0x29000000),
              offset: Offset(0, 0),
              blurRadius: 10,
            ),
          ],
        ),
        padding: EdgeInsets.fromLTRB(constants.edgeDistance*.5, constants.topGap*.5, constants.edgeDistance*.5, constants.topGap),
        child: Column(
          children: [
            Container(
              width: constants.screenWidth,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    child: Text(
                      "Current Account",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: AppConstants.fontTitillium,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Text(
                    widget.cardData.cardNumber,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: AppConstants.fontTitillium,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: constants.fieldGap*4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(0, constants.topGap * 0.5, 0, 0),
                    child: Text(
                      "Balance",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: AppConstants.fontTitillium,
                        fontWeight: FontWeight.w400,
                      ),
                    ),

                  ),

                  Text(
                    "Valid Through",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
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
                    child: Row(
                      children: [
                        Text(
                          widget.cardData.balance,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: AppConstants.fontTitillium,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          widget.cardData.currency,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: AppConstants.fontTitillium,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Text(
                      widget.cardData.validityDate,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: AppConstants.fontTitillium,
                        fontWeight: FontWeight.w800,
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
