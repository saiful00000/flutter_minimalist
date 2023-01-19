class RegExpressions {
  RegExpressions._();

  static final upLowAlphabetOnly = RegExp(r'[a-zA-Z]');
  static final onlyLowercase = RegExp(r'');
  static final phoneNumber = RegExp(
    r'^(0|\+|(\+[0-9]{2,4}|\(\+?[0-9]{2,4}\)) ?)([0-9]*|\d{2,4}-\d{2,4}(-\d{2,4})?)$',
  );
}
