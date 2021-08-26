import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sneakers_app/pages/application/index.dart';
import 'package:sneakers_app/pages/home/index.dart';

class BodyWidget extends GetView<ApplicationController> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      children: [
        HomePage(),
      ],
      physics: NeverScrollableScrollPhysics(),
      controller: controller.pageController,
    );
  }
}
