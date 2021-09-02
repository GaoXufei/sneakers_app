import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';
import 'widgets/widgets.dart';

class ChatDetailsPage extends GetView<ChatDetailsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBarWidget(),
      body: BodyWidget(),
      // bottomNavigationBar: BottomBarWidget(),
    );
  }
}
