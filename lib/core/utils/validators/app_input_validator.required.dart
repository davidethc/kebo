import 'package:formz/formz.dart';

import '../../data/errors/app_input_errors.dart';

class AppInputValidatorRequired
    extends FormzInput<String, AppInputErrorRequired> {
  const AppInputValidatorRequired.pure() : super.pure('');

  const AppInputValidatorRequired.dirty([String value = ''])
      : super.dirty(value);

  @override
  AppInputErrorRequired? validator(String value) {
    if (value.isEmpty) {
      return AppInputErrorRequired.empty;
    }

    return null;
  }
}
