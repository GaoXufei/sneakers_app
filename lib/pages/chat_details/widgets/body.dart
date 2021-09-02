import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sneakers_app/pages/chat_details/index.dart';

import './widgets.dart';

class BodyWidget extends GetView<ChatDetailsController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ! appbar wrapper
        AppBarTodoWidget(),
        // ! body content
        Expanded(
          child: Container(
            color: Colors.grey[100],
            child: ListView(
              physics: BouncingScrollPhysics(),
              padding: const EdgeInsets.only(bottom: 16),
              children: [
                // ! 日期
                DateLabelWidget(label: "Yesterday"),
                // ! 对方信息
                MessageTileWidget(
                  message: "Hi,Lucy How's your day going?",
                  messageDate: "12:01 PM",
                ),
                // ! 自己的信息
                MessageOwnTileWidget(
                  message: "???",
                  messageDate: "12:01 PM",
                ),
              ],
            ),
          ),
        ),
        // ! bottom wrapper
        BottomBarTodoWidget(),
      ],
    );
  }
}

class MessageOwnTileWidget extends StatelessWidget {
  const MessageOwnTileWidget({
    Key? key,
    required this.message,
    required this.messageDate,
  }) : super(key: key);

  final String message;
  final String messageDate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 8.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
            decoration: BoxDecoration(
              color: Colors.blue[500],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
                // bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
              ),
            ),
            child: Text(
              "$message",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(
            "$messageDate",
            style: TextStyle(
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }
}

class MessageTileWidget extends StatelessWidget {
  const MessageTileWidget({
    Key? key,
    required this.message,
    required this.messageDate,
  }) : super(key: key);

  final String message;
  final String messageDate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 8.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Text(
              "$message",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(
            "$messageDate",
            style: TextStyle(
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }
}

class DateLabelWidget extends StatelessWidget {
  const DateLabelWidget({
    Key? key,
    required this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
            color: Colors.grey[200],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 4,
            ),
            child: Text(
              "$label",
              style: TextStyle(fontSize: 12),
            ),
          ),
        ),
      ),
    );
  }
}
