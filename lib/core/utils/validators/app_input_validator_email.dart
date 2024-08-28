import 'package:formz/formz.dart';

import '../../data/errors/app_input_errors.dart';

class AppInputValidatorEmail extends FormzInput<String, AppInputErrorEmail> {
  static final _r = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

  const AppInputValidatorEmail.pure() : super.pure('');

  const AppInputValidatorEmail.dirty([String value = '']) : super.dirty(value);

  @override
  AppInputErrorEmail? validator(String value) {
    if (value.isEmpty) {
      return AppInputErrorEmail.empty;
    }
    if (!_r.hasMatch(value)) {
      return AppInputErrorEmail.notValid;
    }
    return null;
  }
}
