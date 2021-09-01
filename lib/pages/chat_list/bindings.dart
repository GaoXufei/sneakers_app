import 'package:get/get.dart';

import 'controller.dart';

class ChatListBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChatListController>(() => ChatListController());
  }
}
