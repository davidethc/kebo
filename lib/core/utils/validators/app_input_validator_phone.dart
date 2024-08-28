import 'package:formz/formz.dart';

import '../../data/errors/app_input_errors.dart';

class AppInputValidatorPhone extends FormzInput<String, AppInputErrorPhone> {
  static final _r = RegExp(r'^\+\d{7,15}$');

  const AppInputValidatorPhone.pure() : super.pure('');

  const AppInputValidatorPhone.dirty([String value = '']) : super.dirty(value);

  @override
  AppInputErrorPhone? validator(String value) {
    if (value.isEmpty) {
      return AppInputErrorPhone.empty;
    }
    if (!value.trim().startsWith('+')) {
      return AppInputErrorPhone.provideAreaCode;
    }
    if (!_r.hasMatch(value)) {
      return AppInputErrorPhone.notValid;
    }
    return null;
  }
}
