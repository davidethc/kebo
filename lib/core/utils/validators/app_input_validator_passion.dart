import 'package:formz/formz.dart';

import '../../data/errors/app_input_errors.dart';

class AppInputValidatorPassion extends FormzInput<String, AppInputErrorPassion> {
  const AppInputValidatorPassion.pure() : super.pure('');

  const AppInputValidatorPassion.dirty([String value = '']) : super.dirty(value);

  @override
  AppInputErrorPassion? validator(String value) {
    if (value.isEmpty) {
      return AppInputErrorPassion.empty;
    }
    return null;
  }
}
