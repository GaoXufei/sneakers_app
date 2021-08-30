import 'package:get/get.dart';

import 'controller.dart';

class ShoeListBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ShoeListController>(() => ShoeListController());
  }
}
