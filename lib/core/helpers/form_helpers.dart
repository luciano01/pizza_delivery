import '../core.dart';

class FormHelpers {
  static String? validateYourName(String? value) {
    if (value == null || value.trim().isEmpty) {
      return AppConstants.requiredField;
    }

    final trimmed = value.trim();

    if (trimmed.length < 3) {
      return AppConstants.invalidYourNameLenght;
    }

    final startsWithInvalidChar =
        RegExp(AppConstants.regexInvalidYourName).hasMatch(trimmed);

    if (startsWithInvalidChar) {
      return AppConstants.invalidYourName;
    }

    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return AppConstants.requiredField;
    }

    final emailRegex = RegExp(AppConstants.emailRegex);

    if (!emailRegex.hasMatch(value)) {
      return AppConstants.enterValidEmail;
    }

    return null;
  }

  static String? validatePassword(String? value, [String? password]) {
    if (value == null || value.isEmpty) {
      return AppConstants.requiredField;
    }

    if (password != null) {
      if (password != value) {
        return AppConstants.invalidRepeatPassword;
      }
    }

    final hasMinLength = RegExp(AppConstants.regexPasswordCaracteres);
    final hasUppercase = RegExp(AppConstants.regexPasswordUpercase);
    final hasLowercase = RegExp(AppConstants.regexPasswordLowcase);
    final hasDigit = RegExp(AppConstants.regexPasswordNumber);
    final hasSpecialChar = RegExp(AppConstants.regexPasswordSymbol);

    if (!hasMinLength.hasMatch(value)) {
      return AppConstants.invalidPasswordCaracteres;
    }

    if (!hasUppercase.hasMatch(value)) {
      return AppConstants.invalidPasswordUppercase;
    }

    if (!hasLowercase.hasMatch(value)) {
      return AppConstants.invalidPasswordLowcase;
    }

    if (!hasDigit.hasMatch(value)) {
      return AppConstants.invalidPasswordNumber;
    }

    if (!hasSpecialChar.hasMatch(value)) {
      return AppConstants.invalidPasswordSymbol;
    }

    return null;
  }
}
