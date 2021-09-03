import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sneakers_app/pages/chat_details/index.dart';

class GlowingActionButton extends GetView<ChatDetailsController> {
  final VoidCallback onTap;

  GlowingActionButton({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.3),
            spreadRadius: 8,
            blurRadius: 24,
          ),
        ],
      ),
      child: ClipOval(
        child: Material(
          color: Colors.blue,
          child: InkWell(
            splashColor: Colors.blue[300],
            onTap: onTap,
            child: SizedBox(
              width: 40,
              height: 40,
              child: Icon(
                Icons.send,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
