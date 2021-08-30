import 'package:get/get.dart';

import 'controller.dart';

class ShoeDetailsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ShoeDetailsController>(() => ShoeDetailsController());
  }
}
