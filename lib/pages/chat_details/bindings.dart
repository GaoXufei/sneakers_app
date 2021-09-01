import 'package:get/get.dart';

import 'controller.dart';

class ChatDetailsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChatDetailsController>(() => ChatDetailsController());
  }
}
