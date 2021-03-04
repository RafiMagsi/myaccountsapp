
// Model for Credit/Debit card information
class CardInfo {
  CardInfo({
    this.id,
    this.cardNumber,
    this.accountType,
    this.validityDate,
    this.balance,
    this.currency,
  });

  int id;
  String cardNumber;
  String accountType;
  String validityDate;
  String balance;
  String currency;
}