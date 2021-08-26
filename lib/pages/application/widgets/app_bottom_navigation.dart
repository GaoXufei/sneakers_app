import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sneakers_app/pages/application/index.dart';

class ButtonNavigationBarWidget extends GetView<ApplicationController> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0.0,
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.grey[400],
      backgroundColor: Colors.white,
      onTap: controller.handleTapNavigation,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'HOME',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'SEARCH',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.verified_user),
          label: 'VERIFIED',
        ),
      ],
    );
  }
}
