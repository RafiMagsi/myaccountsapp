import 'package:my_accounts/Models/CardInfo.dart';

// Model for user account information
class AccountInfo {
  AccountInfo({
    this.id,
    this.card,
    this.address,
    this.accountType,
    this.currency,
  });

  int id;
  CardInfo card;      // Card instance for the account
  String address;     // Al Nahda Branch - Dubai, UAE
  String accountType; // Saving Account
  String currency;    //IQD
}