import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  @override
  AppBar build(BuildContext context) {
    return AppBar(
      leading: Icon(Icons.menu),
      title: Text('shoe store'),
      centerTitle: true,
      elevation: 0.0,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50.0);
}
