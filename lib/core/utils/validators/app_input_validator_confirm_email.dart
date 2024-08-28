import 'package:formz/formz.dart';

import '../../data/errors/app_input_errors.dart';

class AppInputValidatorConfirmEmail
    extends FormzInput<String, AppInputErrorConfirmEmail> {
  static final _r = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

  const AppInputValidatorConfirmEmail.pure() : super.pure('');

  const AppInputValidatorConfirmEmail.dirty([String value = ''])
      : super.dirty(value);

  @override
  AppInputErrorConfirmEmail? validator(String value) {
    String confirmEmail = value.split('||').first;
    String email = value.split('||').last;
    if (value.isEmpty) {
      return AppInputErrorConfirmEmail.empty;
    }
    if (!_r.hasMatch(confirmEmail)) {
      return AppInputErrorConfirmEmail.notValid;
    }
    if (confirmEmail == email) {
      return AppInputErrorConfirmEmail.noMatch;
    }
    return null;
  }
}
