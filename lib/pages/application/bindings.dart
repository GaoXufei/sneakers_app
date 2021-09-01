import 'package:get/get.dart';
import 'package:sneakers_app/pages/chat_list/index.dart';
import 'package:sneakers_app/pages/home/index.dart';

import 'controller.dart';

class ApplicationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ApplicationController>(() => ApplicationController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<ChatListController>(() => ChatListController());
  }
}
