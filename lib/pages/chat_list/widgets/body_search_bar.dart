import 'package:flutter/material.dart';

class BodySearchBarWidget extends StatelessWidget {
  const BodySearchBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.only(
        bottom: 10,
        left: 16,
        right: 16,
      ),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
      ),
      child: TextField(
        // cursorHeight: 24,
        cursorColor: Colors.grey[400],
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: " Search...",
          hintStyle: TextStyle(
            color: Colors.grey[400],
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 15,
          ),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.green[300],
          ),
        ),
      ),
    );
  }
}
