class CreditCard {
  String holderName = '';
  String cardNum = '';
  String expiry = '';
  String cvv = '';
  String cardNickName = '';
}

class Validations {
  static String? fullName(String value) {
    final regex = RegExp(r'^[a-zA-Z]+$');
    if (regex.hasMatch(value) || value.isEmpty) {
      // Valid email address
      return null;
    } else {
      // Invalid email address
      return 'Please enter a valid Name';
    }
  }

  static String? creditCardNum(String value) {
    final regex = RegExp(r'^\d{16}$');
    if (regex.hasMatch(value) || value.isEmpty) {
      // Valid email address
      return null;
    } else {
      // Invalid email address
      return 'Enter a 16 digit number';
    }
  }

  static String? creditCardExpiry(String value) {
    final regex = RegExp(r'^(0[1-9]|1[0-2])\/\d{2}$');
    if (regex.hasMatch(value) || value.isEmpty) {
      // Valid email address
      return null;
    } else {
      // Invalid email address
      return 'MM/YY';
    }
  }

  static String? creditCardCVV(String value) {
    final regex = RegExp(r'^\d{3}$');
    if (regex.hasMatch(value) || value.isEmpty) {
      // Valid email address
      return null;
    } else {
      // Invalid email address
      return 'Enter a 3 digit CVV';
    }
  }
}
