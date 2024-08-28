import 'package:flutter/cupertino.dart';

import '../../l10n/generated/l10n.dart';

enum AppInputErrorName {
  empty,
}

enum AppInputErrorRequired {
  empty,
}

enum AppInputErrorDescription {
  empty,
}

enum AppInputErrorPassion {
  empty,
}

enum AppInputErrorPassword {
  tooShort,
  noDigit,
  noUppercase,
  noSpecialChar,
  noMatch,
}

enum AppInputErrorPasswordConnect {
  tooShort,
  noUppercase,
  hasSpecialChar,
}

enum AppInputErrorConfirmPassword {
  noMatch,
}

enum AppInputErrorEmail {
  notValid,
  empty,
}

enum AppInputErrorConfirmEmail {
  noMatch,
  notValid,
  empty,
}

enum AppInputErrorPhone {
  notValid,
  provideAreaCode,
  empty,
}

extension MapInputErrorName on AppInputErrorName {
  String asString(BuildContext context) {
    final S s = S.of(context);
    switch (this) {
      case AppInputErrorName.empty:
        return s.inputErrorNameEmpty;
    }
  }
}

extension MapInputErrorRequired on AppInputErrorRequired {
  String asString(BuildContext context) {
    final S s = S.of(context);
    switch (this) {
      case AppInputErrorRequired.empty:
        return s.inputErrorRequiredEmpty;
    }
  }
}

extension MapInputErrorPassion on AppInputErrorPassion {
  String asString(BuildContext context) {
    final S s = S.of(context);
    switch (this) {
      case AppInputErrorPassion.empty:
        return s.inputErrorPassionEmpty;
    }
  }
}

extension MapInputErrorPassword on AppInputErrorPassword {
  String asString(BuildContext context) {
    final S s = S.of(context);
    switch (this) {
      case AppInputErrorPassword.tooShort:
        return s.inputErrorPasswordTooShort;
      case AppInputErrorPassword.noDigit:
        return s.inputErrorPasswordNoDigit;
      case AppInputErrorPassword.noUppercase:
        return s.inputErrorPasswordNoUppercase;
      case AppInputErrorPassword.noMatch:
        return s.inputErrorPasswordsDoNotMatch;
      case AppInputErrorPassword.noSpecialChar:
        return s.inputErrorPasswordSpecialChar;
    }
  }
}

extension MapInputErrorPasswordConnect on AppInputErrorPasswordConnect {
  String asString(BuildContext context) {
    final S s = S.of(context);
    switch (this) {
      case AppInputErrorPasswordConnect.tooShort:
        return s.inputErrorPasswordTooShort;
      case AppInputErrorPasswordConnect.noUppercase:
        return s.inputErrorPasswordNoUppercase;
      case AppInputErrorPasswordConnect.hasSpecialChar:
        return s.inputErrorPasswordHasSpecialChar;
    }
  }
}

extension MapInputErrorConfirmPassword on AppInputErrorConfirmPassword {
  String asString(BuildContext context) {
    final S s = S.of(context);
    switch (this) {
      case AppInputErrorConfirmPassword.noMatch:
        return s.inputErrorPasswordsDoNotMatch;
    }
  }
}

extension MapInputErrorEmail on AppInputErrorEmail {
  String asString(BuildContext context) {
    final S s = S.of(context);
    switch (this) {
      case AppInputErrorEmail.empty:
        return s.inputErrorEmailEmpty;
      case AppInputErrorEmail.notValid:
        return s.inputErrorEmailInvalid;
    }
  }
}

extension MapInputErrorConfirmEmail on AppInputErrorConfirmEmail {
  String asString(BuildContext context) {
    final S s = S.of(context);
    switch (this) {
      case AppInputErrorConfirmEmail.empty:
        return s.inputErrorEmailEmpty;
      case AppInputErrorConfirmEmail.notValid:
        return s.inputErrorEmailInvalid;
      case AppInputErrorConfirmEmail.noMatch:
        return 'No match';
    }
  }
}

extension MapInputErrorPhone on AppInputErrorPhone {
  String asString(BuildContext context) {
    final S s = S.of(context);
    switch (this) {
      case AppInputErrorPhone.notValid:
        return s.inputErrorPhoneNumberInvalid;
      case AppInputErrorPhone.empty:
        return s.inputErrorPhoneNumberEmpty;
      case AppInputErrorPhone.provideAreaCode:
        return s.inputErrorPhoneNumberInvalidAreaCode;
    }
  }
}
