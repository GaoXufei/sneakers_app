import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sneakers_app/pages/chat_details/index.dart';

class BottomBarTodoWidget extends GetView<ChatDetailsController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: TextField(),
    );
  }
}
