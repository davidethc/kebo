import 'package:kebo_app/core/constants/theme/app_colors.dart';
import 'package:kebo_app/core/l10n/generated/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class LoadMoreView extends StatefulWidget {
  final Function onLoadMore;
  final Function onRefresh;
  final Widget child;

  const LoadMoreView({
    Key? key,
    required this.onLoadMore,
    required this.onRefresh,
    required this.child,
  }) : super(key: key);

  @override
  State<LoadMoreView> createState() => _LoadMoreViewState();
}

class _LoadMoreViewState extends State<LoadMoreView> {
  final _refreshController = RefreshController();

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      enablePullDown: true,
      enablePullUp: true,
      physics: const BouncingScrollPhysics(),
      controller: _refreshController,
      header: const WaterDropHeader(
        complete: SizedBox.shrink(),
        refresh: CupertinoActivityIndicator(color: AppColors.grey, radius: 12),
        waterDropColor: AppColors.accentPrimary,
      ),
      footer: ClassicFooter(
        loadStyle: LoadStyle.ShowWhenLoading,
        idleText: S.current.loading,
        canLoadingText: S.current.loading,
        loadingText: S.current.loading,
      ),
      onLoading: () async {
        widget.onLoadMore();
        _refreshController.loadComplete();
      },
      onRefresh: () {
        Future.delayed(const Duration(milliseconds: 1000), () {
          widget.onRefresh();
          _refreshController.refreshCompleted();
        });
      },
      child: widget.child,
    );
  }
}
