/// validate if an entered text is a valid email
bool isValidEmail(String text) {
  return RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
  ).hasMatch(text);
}

/// return a list of errors when the string entered
/// is not a valid password
List<String> isValidPassword(String text) {
  final errors = [
    PasswordErrors.atLeast6Characters,
    PasswordErrors.atLeast1Number,
    PasswordErrors.atLeast1UpperCase,
  ];

  if (text.trim().length >= 6) {
    errors.remove(PasswordErrors.atLeast6Characters);
  }

  if (RegExp(r"^(?=.*?[0-9])").hasMatch(text)) {
    errors.remove(PasswordErrors.atLeast1Number);
  }

  if (RegExp(r"^(?=.*[A-Z])").hasMatch(text)) {
    errors.remove(PasswordErrors.atLeast1UpperCase);
  }
  return errors;
}

class PasswordErrors {
  PasswordErrors._();
  static const atLeast6Characters = "At least 6 characters";
  static const atLeast1Number = "At least one number";
  static const atLeast1UpperCase = "At least one upper case";
}
