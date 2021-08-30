import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sneakers_app/pages/shoe_details/index.dart';

class BodyWidget extends GetView<ShoeDetailsController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: Text("${controller.state.title}"),
    );
  }
}
