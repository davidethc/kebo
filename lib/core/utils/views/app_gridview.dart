import 'package:kebo_app/core/constants/theme/app_colors.dart';
import 'package:kebo_app/core/l10n/generated/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class AppGridView extends StatefulWidget {
  final List data;
  final double crossAxisSpacing;
  final double mainAxisSpacing;
  final int crossAxisCount;
  final double childAspectRatio;
  final Function(int index, dynamic item) renderItem;
  final Function? onLoadMore;
  final Function? onRefresh;
  final bool hasRefresh;
  final ScrollController? controller;
  final bool hasLoadmore;
  final EdgeInsets padding;
  const AppGridView({
    super.key,
    required this.data,
    required this.renderItem,
    this.controller,
    this.crossAxisSpacing = 8,
    this.mainAxisSpacing = 8,
    this.crossAxisCount = 2,
    this.childAspectRatio = 1 / 1.72,
    this.padding = EdgeInsets.zero,
  })  : hasRefresh = false,
        onLoadMore = null,
        hasLoadmore = false,
        onRefresh = null;
  const AppGridView.onRefresh({
    super.key,
    required this.data,
    required this.renderItem,
    this.controller,
    this.crossAxisSpacing = 8,
    this.mainAxisSpacing = 8,
    this.crossAxisCount = 2,
    this.childAspectRatio = 1 / 1.72,
    required this.onLoadMore,
    required this.onRefresh,
    this.padding = EdgeInsets.zero,
  })  : hasRefresh = true,
        hasLoadmore = false;
  const AppGridView.onLoadmore({
    super.key,
    required this.data,
    required this.renderItem,
    this.controller,
    this.crossAxisSpacing = 8,
    this.mainAxisSpacing = 8,
    this.crossAxisCount = 2,
    this.childAspectRatio = 1 / 1.72,
    required this.onLoadMore,
    this.padding = EdgeInsets.zero,
  })  : hasRefresh = true,
        hasLoadmore = true,
        onRefresh = null;
  @override
  _AppGridViewState createState() => _AppGridViewState();
}

class _AppGridViewState extends State<AppGridView> {
  final _refreshController = RefreshController();

  bool get hasRefresh => widget.hasRefresh;
  bool get loadMore => widget.hasLoadmore;
  bool get enablePullDown => hasRefresh && !loadMore;
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
      child: GridView.builder(
        controller: widget.controller,
        addAutomaticKeepAlives: false,
        addRepaintBoundaries: false,
        padding: widget.padding,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: widget.crossAxisCount,
            childAspectRatio: widget.childAspectRatio,
            mainAxisSpacing: widget.mainAxisSpacing,
            crossAxisSpacing: widget.crossAxisSpacing),
        scrollDirection: Axis.vertical,
        itemCount: widget.data.length,
        itemBuilder: (context, index) => widget.renderItem(
          index,
          widget.data[index],
        ),
      ),
    );
  }
}
