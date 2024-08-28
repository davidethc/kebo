import 'package:formz/formz.dart';

import '../../data/errors/app_input_errors.dart';

class AppInputValidatorName extends FormzInput<String, AppInputErrorName> {
  const AppInputValidatorName.pure() : super.pure('');

  const AppInputValidatorName.dirty([String value = '']) : super.dirty(value);

  @override
  AppInputErrorName? validator(String value) {
    if (value.isEmpty) {
      return AppInputErrorName.empty;
    }
    return null;
  }
}
