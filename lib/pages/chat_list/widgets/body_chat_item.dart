import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sneakers_app/pages/chat_details/index.dart';
import 'package:sneakers_app/pages/chat_list/index.dart';

class BodyChatItem extends GetView<ChatListController> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(
          ChatDetailsPage(),
          binding: ChatDetailsBinding(),
          transition: Transition.rightToLeft,
        );
      },
      child: Container(
        height: 120,
        child: Row(
          children: [
            // ! 头像
            CircleAvatar(
              radius: 33,
              backgroundColor: Colors.grey[200],
              // child: Text("$itemIndex"),
            ),
            SizedBox(width: 16),
            // ! (名字 日期) || (最新内容 数量)
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // ! 名字 日期
                  Container(
                    height: 30,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            "Patrik NeIson",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                        Text(
                          "2MINS AGO",
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // ! 最新内容 数量
                  Container(
                    height: 30,
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Wanna go outside someday?",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.grey[400],
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                        Container(
                          width: 20,
                          height: 20,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.green[400],
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                          ),
                          child: Text(
                            "1",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        // color: Colors.grey[100],
        // margin: const EdgeInsets.only(top: 16),
      ),
    );
  }
}
