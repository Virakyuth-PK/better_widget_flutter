import 'package:better_widget_flutter/paging/better_empty_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import 'better_list_grid_shimmer.dart';

class BetterPagingBuilderDelegate<ItemType>
    extends PagedChildBuilderDelegate<ItemType> {
  BetterPagingBuilderDelegate(
      {required super.itemBuilder,
      super.firstPageErrorIndicatorBuilder,
      super.newPageErrorIndicatorBuilder,
      super.firstPageProgressIndicatorBuilder,
      super.newPageProgressIndicatorBuilder,
      super.noItemsFoundIndicatorBuilder,
      super.noMoreItemsIndicatorBuilder,
      super.animateTransitions,
      super.transitionDuration});

  factory BetterPagingBuilderDelegate.list(
          {required ItemWidgetBuilder<ItemType> itemBuilder,
          WidgetBuilder? firstPageErrorIndicatorBuilder,
          WidgetBuilder? newPageErrorIndicatorBuilder,
          WidgetBuilder? firstPageProgressIndicatorBuilder,
          WidgetBuilder? newPageProgressIndicatorBuilder,
          WidgetBuilder? noItemsFoundIndicatorBuilder,
          WidgetBuilder? noMoreItemsIndicatorBuilder,
          bool animateTransitions = false,
          Duration transitionDuration = const Duration(milliseconds: 250),
          Axis scrollDirection = Axis.vertical,
          bool reverse = false,
          bool isNeedShowFullScreenNoItemsFoundIndicatorBuilder = false}) =>
      BetterPagingBuilderDelegate(
          itemBuilder: itemBuilder,
          firstPageErrorIndicatorBuilder: firstPageErrorIndicatorBuilder ??
              (context) => BetterEmptyData(
                  isNeedShowFullScreen:
                      isNeedShowFullScreenNoItemsFoundIndicatorBuilder),
          newPageErrorIndicatorBuilder: newPageErrorIndicatorBuilder,
          firstPageProgressIndicatorBuilder:
              firstPageProgressIndicatorBuilder ??
                  (context) => BetterListGridShimmer.list(
                      scrollDirection: scrollDirection),
          newPageProgressIndicatorBuilder: newPageProgressIndicatorBuilder ??
              (context) => CircularProgressIndicator(
                    color: Theme.of(context).primaryColor,
                  ),
          noItemsFoundIndicatorBuilder: noItemsFoundIndicatorBuilder ??
              (context) => BetterEmptyData(
                    isNeedShowFullScreen:
                        isNeedShowFullScreenNoItemsFoundIndicatorBuilder,
                  ),
          noMoreItemsIndicatorBuilder: noMoreItemsIndicatorBuilder,
          animateTransitions: animateTransitions,
          transitionDuration: transitionDuration);

  factory BetterPagingBuilderDelegate.grid(
          {required ItemWidgetBuilder<ItemType> itemBuilder,
          WidgetBuilder? firstPageErrorIndicatorBuilder,
          WidgetBuilder? newPageErrorIndicatorBuilder,
          WidgetBuilder? firstPageProgressIndicatorBuilder,
          WidgetBuilder? newPageProgressIndicatorBuilder,
          WidgetBuilder? noItemsFoundIndicatorBuilder,
          WidgetBuilder? noMoreItemsIndicatorBuilder,
          bool animateTransitions = false,
          Duration transitionDuration = const Duration(milliseconds: 250),
          int crossAxisCount = 2,
          double mainAxisSpacing = 0.0,
          double crossAxisSpacing = 0.0,
          double childAspectRatio = 1.0,
          bool isNeedShowFullScreenNoItemsFoundIndicatorBuilder = false}) =>
      BetterPagingBuilderDelegate(
          itemBuilder: itemBuilder,
          firstPageErrorIndicatorBuilder: firstPageErrorIndicatorBuilder ??
              (context) => BetterEmptyData(
                  isNeedShowFullScreen:
                      isNeedShowFullScreenNoItemsFoundIndicatorBuilder),
          newPageErrorIndicatorBuilder: newPageErrorIndicatorBuilder,
          firstPageProgressIndicatorBuilder:
              firstPageProgressIndicatorBuilder ??
                  (context) => BetterListGridShimmer.grid(
                      crossAxisCount: crossAxisCount),
          newPageProgressIndicatorBuilder: newPageProgressIndicatorBuilder ??
              (context) => CircularProgressIndicator(
                    color: Theme.of(context).primaryColor,
                  ),
          noItemsFoundIndicatorBuilder: noItemsFoundIndicatorBuilder ??
              (context) => BetterEmptyData(
                  isNeedShowFullScreen:
                      isNeedShowFullScreenNoItemsFoundIndicatorBuilder),
          noMoreItemsIndicatorBuilder: noMoreItemsIndicatorBuilder,
          animateTransitions: animateTransitions,
          transitionDuration: transitionDuration);
}
