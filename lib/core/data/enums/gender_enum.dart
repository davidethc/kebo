// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../l10n/generated/l10n.dart';

enum Gender { male, female }

extension GenderExtension on Gender {
  String asString() {
    switch (this) {
      case Gender.male:
        return S.current.male;
      case Gender.female:
        return S.current.female;
      default:
        return '';
    }
  }

  IconData icon() {
    switch (this) {
      case Gender.male:
        return FontAwesomeIcons.male;
      case Gender.female:
        return FontAwesomeIcons.female;
      default:
        return FontAwesomeIcons.add;
    }
  }

  String value() {
    switch (this) {
      case Gender.male:
        return 'male';
      case Gender.female:
        return 'female';
      default:
        return 'male';
    }
  }
}
