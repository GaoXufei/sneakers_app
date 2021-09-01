import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  @override
  AppBar build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.search_rounded),
      ),
      centerTitle: true,
      title: Text(
        "Messages",
        style: TextStyle(
          // fontSize: 36,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        CircleAvatar(),
        SizedBox(
          width: 16,
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(70);
}
