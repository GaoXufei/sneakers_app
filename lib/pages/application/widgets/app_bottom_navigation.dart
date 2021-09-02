import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sneakers_app/common/utils/utils.dart';
import 'package:sneakers_app/pages/application/index.dart';

class ButtonNavigationBarWidget extends GetView<ApplicationController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        padding: const EdgeInsets.only(bottom: 8, top: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          // boxShadow: [
          //   BoxShadow(
          //     blurRadius: 10,
          //     color: Colors.grey.withOpacity(0.5),
          //   )
          // ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: BottomNavigationBar(
          elevation: 0.0,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey[400],
          backgroundColor: Colors.transparent,
          onTap: controller.handleTapNavigation,
          currentIndex: controller.state.page,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(IconFont.home, size: 20),
              label: 'HOME',
            ),
            BottomNavigationBarItem(
              icon: Icon(IconFont.chat),
              label: 'CHAT',
            ),
            BottomNavigationBarItem(
              icon: Icon(IconFont.search),
              label: 'MENU BOOK',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/svg/me_normal.svg",
                width: 20,
              ),
              activeIcon: SvgPicture.asset(
                "assets/svg/me.svg",
                width: 20,
              ),
              label: 'ABOUT ME',
            ),
          ],
        ),
      ),
    );
  }
}
