import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sneakers_app/pages/chat_list/index.dart';

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
          padding: const EdgeInsets.only(bottom: 16),
          sliver: SliverFixedExtentList(
            delegate: SliverChildBuilderDelegate(
              (_, index) {
                return Container(
                  color: Colors.grey[100],
                  margin: const EdgeInsets.only(top: 16),
                );
              },
              childCount: 10,
            ),
            itemExtent: 100,
          ),
        ),
      ],
    );
  }
}
