import 'package:flutter/cupertino.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../constants/theme/app_colors.dart';

class AppSmartRefresher extends StatefulWidget {
  final Widget child;
  final Function onRefresh;
  const AppSmartRefresher({
    super.key,
    required this.child,
    required this.onRefresh,
  });

  @override
  State<AppSmartRefresher> createState() => _AppSmartRefresherState();
}

class _AppSmartRefresherState extends State<AppSmartRefresher> {
  final _refreshController = RefreshController();
  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      controller: _refreshController,
      header: const WaterDropHeader(
        complete: SizedBox.shrink(),
        refresh: CupertinoActivityIndicator(color: AppColors.grey, radius: 12),
        waterDropColor: AppColors.accentPrimary,
      ),
      onRefresh: () => Future.delayed(const Duration(milliseconds: 300), () {
        _refreshController.refreshCompleted();
        widget.onRefresh();
      }),
      child: widget.child,
    );
  }
}
