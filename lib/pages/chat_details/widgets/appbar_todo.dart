import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBarTodoWidget extends StatelessWidget {
  const AppBarTodoWidget({
    Key? key,
  }) : super(key: key);

  final double appBarHeight = 80 + 20;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: appBarHeight,
      color: Colors.white,
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: Get.back,
            icon: Icon(Icons.arrow_back_ios_new_outlined),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Container(
              height: appBarHeight,
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 26,
                  ),
                  SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Haris Roundback",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Online now",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.video_camera_back,
              color: Colors.grey[500],
              size: 18,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.phone,
              color: Colors.grey[500],
              size: 18,
            ),
          ),
        ],
      ),
    );
  }
}
