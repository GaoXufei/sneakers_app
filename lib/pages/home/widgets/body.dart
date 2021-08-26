import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller.dart';

class BodyWidget extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Obx(
      () => ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Icon(
                  Icons.search,
                  color: Colors.grey[500],
                ),
              ],
            ),
          ),
          ...controller.shoeList.map(
            (data) => Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 10.0),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(10, 10),
                    blurRadius: 10.0,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ],
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Row(
                children: [
                  // ! 图片
                  Image.asset(
                    "assets/${data.imgPath}",
                    width: 100,
                    height: 80,
                  ),
                  // ! 标题 品牌
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: size.width * .4,
                          child: Text(
                            "${data.name}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Text(
                          "${data.brand}",
                          style: TextStyle(
                            color: Colors.grey[500],
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // ! 价格
                  Text(
                    "\$${data.price.toInt()}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
