import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';
import 'widgets/widgets.dart';

class ApplicationPage extends GetView<ApplicationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyWidget(),
      // bottomNavigationBar: ButtonNavigationBarWidget(),
    );
  }
}
