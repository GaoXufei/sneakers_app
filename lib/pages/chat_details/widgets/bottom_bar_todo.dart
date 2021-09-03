import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sneakers_app/pages/chat_details/index.dart';

import './widgets.dart';

class BottomBarTodoWidget extends GetView<ChatDetailsController> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // ! camera
        Container(
          decoration: BoxDecoration(
            border: Border(
              right: BorderSide(
                width: 1,
                color: Colors.grey,
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.photo_camera),
          ),
        ),
        // ! input
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              style: TextStyle(fontSize: 14),
              cursorColor: Colors.grey[600],
              decoration: InputDecoration(
                hintText: "Type something...",
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        // ! send button
        Container(
          padding: const EdgeInsets.all(12),
          child: GlowingActionButton(onTap: () {}),
        ),
      ],
    );
  }
}
