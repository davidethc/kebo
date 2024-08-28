import 'package:formz/formz.dart';

import '../../data/errors/app_input_errors.dart';

class AppInputValidatorPassword
    extends FormzInput<String, AppInputErrorPassword> {
  const AppInputValidatorPassword.pure() : super.pure('');

  const AppInputValidatorPassword.dirty([String value = ''])
      : super.dirty(value);

  @override
  AppInputErrorPassword? validator(String value) {
    if (value.length < 8) {
      return AppInputErrorPassword.tooShort;
    }
    if (!value.contains(RegExp(r'[0-9]'))) {
      return AppInputErrorPassword.noDigit;
    }
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return AppInputErrorPassword.noUppercase;
    }
    if (!value.contains(RegExp(r'[!@#\$%^&*(),.?":{}|<>]'))) {
      return AppInputErrorPassword.noSpecialChar;
    }

    return null;
  }
}

class AppInputValidatorConfirmPassword
    extends FormzInput<String, AppInputErrorConfirmPassword> {
  const AppInputValidatorConfirmPassword.pure() : super.pure('');

  const AppInputValidatorConfirmPassword.dirty([String value = ''])
      : super.dirty(value);

  @override
  AppInputErrorConfirmPassword? validator(String value) {
    if (value.split('||').first != value.split('||').last) {
      return AppInputErrorConfirmPassword.noMatch;
    }
    return null;
  }
}
