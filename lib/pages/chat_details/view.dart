import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sneakers_app/common/utils/utils.dart';

import 'index.dart';
import 'widgets/widgets.dart';

class ChatDetailsPage extends GetView<ChatDetailsController> {
  // 内容页
  Widget _buildView() {
    return HelloWidget();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: Get.back,
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text("chat"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(IconFont.setting, size: 18),
          ),
        ],
      ),
      body: _buildView(),
      bottomNavigationBar: Container(
        height: 60,
        color: Colors.white,
      ),
    );
  }
}
