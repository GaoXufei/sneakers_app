import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sneakers_app/pages/chat_list/index.dart';
import 'package:sneakers_app/pages/chat_list/widgets/widgets.dart';

class BodyWidget extends GetView<ChatListController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ! Search Bar Wrapper
        BodySearchBarWidget(),
        // ! Chat List Wrapper
        Expanded(
          child: ListView.separated(
            physics: BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            separatorBuilder: (BuildContext context, int index) =>
                SizedBox(height: 10),
            itemCount: 100,
            itemBuilder: (_, index) => Container(
              height: 80,
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 34,
                    backgroundColor: Colors.green[400],
                    child: Text(
                      "$index",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Message Title $index",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Message details $index",
                        style: TextStyle(
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
