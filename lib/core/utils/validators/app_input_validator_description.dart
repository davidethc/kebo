import 'package:formz/formz.dart';

import '../../data/errors/app_input_errors.dart';

class AppInputValidatorDescription
    extends FormzInput<String, AppInputErrorDescription> {
  const AppInputValidatorDescription.pure() : super.pure('');

  const AppInputValidatorDescription.dirty([String value = ''])
      : super.dirty(value);

  @override
  AppInputErrorDescription? validator(String value) {
    if (value.isEmpty) {
      return AppInputErrorDescription.empty;
    }
    return null;
  }
}
