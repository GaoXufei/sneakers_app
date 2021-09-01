import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller.dart';

class BodyStoriesBarWidget extends GetView<ChatListController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[50],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 16, top: 16),
            child: Text(
              "Stories",
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 110,
            // color: Colors.blue,
            child: ListView.separated(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              separatorBuilder: (_, index) {
                return SizedBox(width: 10);
              },
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Container(
                      width: 66,
                      height: 66,
                      child: CircleAvatar(),
                    ),
                    SizedBox(height: 16),
                    Text("MIKE")
                  ],
                );
              },
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
