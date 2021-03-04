import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_accounts/Settings/AppConstants.dart';

class ActionRowWidget extends StatefulWidget {
  final IconData icon;
  final String actionText;
  ActionRowWidget({this.icon, this.actionText});

  _ActionRowWidgetState createState() => _ActionRowWidgetState();
}

class _ActionRowWidgetState extends State<ActionRowWidget> {
  double imageSize;

  AppConstants constants = AppConstants();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(constants.edgeDistance*0.2, constants.topGap*0.2, constants.edgeDistance*0.2, constants.topGap),
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
          padding: EdgeInsets.fromLTRB(constants.edgeDistance*0.5, constants.topGap, constants.edgeDistance, constants.topGap),
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(widget.icon, color: AppConstants.appGreenColor,),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          widget.actionText,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: AppConstants.appDarkGreenColor,
                            fontSize: 16,
                            fontFamily: AppConstants.fontTitillium,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios_rounded, size: 13, color: AppConstants.appBorderGreyColor,),
                  ],
                ),
              ),
            ],
          ),
      ),
    );
  }
}
