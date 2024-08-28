import 'package:flutter/material.dart';

import '../../l10n/generated/l10n.dart';

enum BottomBar { home, transactions, report, analytics, ai }

extension BottomBarExtension on BottomBar {
  String asString() {
    switch (this) {
      case BottomBar.home:
        return S.current.home;
      case BottomBar.transactions:
        return S.current.transactions;
      case BottomBar.report:
        return S.current.report;
      case BottomBar.analytics:
        return S.current.analytics;
      case BottomBar.ai:
        return S.current.keboWise;
      default:
        return '';
    }
  }

  IconData icon() {
    switch (this) {
      case BottomBar.home:
        return Icons.home_outlined;
      case BottomBar.transactions:
        return Icons.change_circle_outlined;
      case BottomBar.report:
        return Icons.analytics_outlined;
      case BottomBar.analytics:
        return Icons.query_stats;
      case BottomBar.ai:
        return Icons.message_outlined;
      default:
        return Icons.add;
    }
  }
}
