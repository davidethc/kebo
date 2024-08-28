import 'package:flutter/cupertino.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:kebo_app/core/constants/theme/app_colors.dart';

import '../../l10n/generated/l10n.dart';

class AppListView extends StatefulWidget {
  final List data;
  final Function? onLoadMore;
  final Function? onRefresh;
  final Axis scrollDirection;
  final Function(dynamic item, int index) renderItem;
  final bool hasRefresh;
  final Widget separatorItem;
  final bool? reverse;
  final bool hasLoadmore;
  final ScrollController? controller;
  final EdgeInsetsGeometry? padding;
  const AppListView({
    Key? key,
    required this.data,
    this.controller,
    this.reverse,
    this.scrollDirection = Axis.vertical,
    this.separatorItem = const SizedBox(height: 10),
    required this.renderItem,
    this.padding = const EdgeInsets.all(0),
  })  : hasRefresh = false,
        hasLoadmore = false,
        onLoadMore = null,
        onRefresh = null,
        super(key: key);
  const AppListView.onRefresh({
    Key? key,
    required this.data,
    this.controller,
    required this.onLoadMore,
    this.reverse,
    this.separatorItem = const SizedBox(height: 10),
    required this.onRefresh,
    this.scrollDirection = Axis.vertical,
    required this.renderItem,
    this.padding = const EdgeInsets.all(0),
  })  : hasRefresh = true,
        hasLoadmore = false,
        super(key: key);
  const AppListView.onLoadmore({
    Key? key,
    required this.data,
    this.controller,
    required this.onLoadMore,
    this.reverse,
    this.separatorItem = const SizedBox(height: 10),
    this.scrollDirection = Axis.vertical,
    required this.renderItem,
    this.padding = const EdgeInsets.all(0),
  })  : hasRefresh = true,
        hasLoadmore = true,
        onRefresh = null,
        super(key: key);
  @override
  State<AppListView> createState() => _AppListViewState();
}

class _AppListViewState extends State<AppListView> {
  final _refreshController = RefreshController();

  bool get hasRefresh => widget.hasRefresh;
  bool get loadMore => widget.hasLoadmore;
  bool get enablePullDown => hasRefresh && !loadMore;
  bool? get reverse => widget.reverse;

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      enablePullDown: enablePullDown,
      enablePullUp: hasRefresh,
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
        widget.onLoadMore?.call();
        _refreshController.loadComplete();
      },
      onRefresh: () => Future.delayed(const Duration(milliseconds: 1000), () {
        _refreshController.refreshCompleted();
        widget.onRefresh?.call();
      }),
      child: ListView.separated(
        controller: widget.controller,
        reverse: reverse ?? false,
        scrollDirection: widget.scrollDirection,
        addAutomaticKeepAlives: false,
        addRepaintBoundaries: false,
        padding: widget.padding,
        separatorBuilder: (context, index) => widget.separatorItem,
        itemBuilder: (context, index) =>
            widget.renderItem(widget.data[index], index),
        itemCount: widget.data.length,
      ),
    );
  }
}
