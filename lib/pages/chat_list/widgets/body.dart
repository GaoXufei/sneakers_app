import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sneakers_app/pages/chat_list/index.dart';
import 'dart:math' as math;

import './widgets.dart';

class BodyWidget extends GetView<ChatListController> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: BodyStoriesBarWidget(),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(16),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (_, index) {
                // 处理下标，奇数(even)为分割线，偶数(odd)为普通元素
                final int itemIndex = index ~/ 2;
                // 如果为偶数
                // 否则返回分割线
                return index.isEven
                    ? BodyChatItem()
                    : Divider(height: 0, color: Colors.grey[200]);
              },
              semanticIndexCallback: (Widget widget, int localIndex) {
                return localIndex.isEven ? localIndex ~/ 2 : null;
              },
              childCount: math.max(0, 10 * 2 - 1),
            ),
          ),
        ),
      ],
    );
  }
}
