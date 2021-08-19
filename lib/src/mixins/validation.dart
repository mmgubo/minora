class ValidationMixin {
  String passwordValue;

  String validateName(String value) {
    if (value == '') {
      return 'Please provide your full name.';
    }

    return null;
  }

  String validateEmail(String value) {
    Pattern pattern = r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
    RegExp regex = RegExp(pattern);

    if (!regex.hasMatch(value)) {
      return 'Invalid email address.';
    }

    return null;
  }

  String validatePassword(String value) {
    if (value.length < 6) {
      return 'Password needs to be at least 6 characters.';
    }

    passwordValue = value;

    return null;
  }

  String validateConfirmPassword(String value) {
    if (value != passwordValue) {
      return 'Passwords do not match.';
    }

    return null;
  }

  String validateRole(dynamic value) {
    if (value == null) {
      return 'Please select a role.';
    }

    return null;
  }

  String validateMarket(dynamic value) {
    if (value == null) {
      return 'Please select a market.';
    }

    return null;
  }

  String validateProducerNumber(String value) {
    Pattern pattern = r"^[0-9]+";
    RegExp regex = RegExp(pattern);

    if (!regex.hasMatch(value)) {
      return 'Invalid supplier number.';
    }

    if (value.length > 6) {
      return 'Supplier number cannot exceed 6 digits.';
    }

    return null;
  }
}
