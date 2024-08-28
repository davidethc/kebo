// ignore_for_file: deprecated_member_use

import '../../l10n/generated/l10n.dart';

enum TypeTransaction { income, expense }

extension TypeTransactionExtension on TypeTransaction {
  String asString() {
    switch (this) {
      case TypeTransaction.income:
        return S.current.income;
      case TypeTransaction.expense:
        return S.current.expenses;
      default:
        return '';
    }
  }

  String asType() {
    switch (this) {
      case TypeTransaction.income:
        return 'INFLOW';
      case TypeTransaction.expense:
        return 'OUTFLOW';
      default:
        return '';
    }
  }
}
