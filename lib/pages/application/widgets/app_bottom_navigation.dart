import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sneakers_app/pages/application/index.dart';

class ButtonNavigationBarWidget extends GetView<ApplicationController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BottomNavigationBar(
        // elevation: 0.0,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey[400],
        backgroundColor: Colors.white,
        onTap: controller.handleTapNavigation,
        currentIndex: controller.state.page,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'HOME',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: 'CHAT',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: 'MENU BOOK',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle),
            label: 'ABOUT ME',
          ),
        ],
      ),
    );
  }
}
