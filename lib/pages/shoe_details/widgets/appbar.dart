import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  AppBar build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      leading: IconButton(
        onPressed: Get.back,
        icon: Icon(Icons.arrow_back),
      ),
      title: Text("shoe details"),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50);
}
