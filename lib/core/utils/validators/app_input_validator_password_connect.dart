import 'package:formz/formz.dart';

import '../../data/errors/app_input_errors.dart';

class AppInputValidatorPasswordConnect
    extends FormzInput<String, AppInputErrorPasswordConnect> {
  const AppInputValidatorPasswordConnect.pure() : super.pure('');

  const AppInputValidatorPasswordConnect.dirty([String value = ''])
      : super.dirty(value);

  @override
  AppInputErrorPasswordConnect? validator(String value) {
    if (value.length < 6) {
      return AppInputErrorPasswordConnect.tooShort;
    }
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return AppInputErrorPasswordConnect.noUppercase;
    }
    if (value.contains(RegExp(r'[!@#\$%^&*(),.?":{}|<>]'))) {
      return AppInputErrorPasswordConnect.hasSpecialChar;
    }

    return null;
  }
}
