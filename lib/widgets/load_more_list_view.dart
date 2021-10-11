import 'package:flutter/material.dart';
import '../share/share.dart';

class LoadMoreListView<T> extends StatelessWidget {
  final ScrollController controller;
  final List<T> data;
  final IndexedWidgetBuilder itemBuilder;
  final int? total;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onLoadMore;
  final RefreshCallback? onRefresh;

  LoadMoreListView({
    Key? key,
    required this.controller,
    required this.data,
    required this.itemBuilder,
    this.total,
    this.padding,
    this.onLoadMore,
    this.onRefresh,
  }) : super(key: key);

  bool _handleScrollNotification(ScrollNotification notification) {
    if (notification is ScrollEndNotification) {
      if (controller.position.extentAfter == 0) {
        if ((total ?? data.length) > data.length) onLoadMore?.call();
      }
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    final _total = total ?? data.length;
    final _count = _total > data.length ? data.length + 1 : data.length;
    return RefreshIndicator(
      onRefresh: onRefresh ?? () async {},
      child: NotificationListener<ScrollNotification>(
        onNotification: _handleScrollNotification,
        child: ListView.builder(
          controller: controller,
          physics:
              ClampingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          padding: padding,
          itemCount: _count,
          itemBuilder: (context, index) {
            if (_count > data.length && index == _count - 1) {
              return Container(
                padding: EdgeInsets.all(8.w),
                alignment: Alignment.center,
                child: CircularProgressIndicator(
                  color: Theme.of(context).primaryColor,
                ),
              );
            }
            return itemBuilder.call(context, index);
          },
        ),
      ),
    );
  }
}
