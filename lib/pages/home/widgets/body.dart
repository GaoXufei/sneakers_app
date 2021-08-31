import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sneakers_app/pages/shoe_details/index.dart';

import '../controller.dart';

import 'package:sneakers_app/pages/home/widgets/widgets.dart';

class BodyWidget extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "New Collection",
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
          Container(
            height: 350.0,
            child: ListView.builder(
              padding: const EdgeInsets.only(left: 16.0),
              itemCount: controller.shoeList.length,
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              // ! 鞋 item
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  Get.to(
                    ShoeDetailsPage(shoeEntity: controller.shoeList[index]),
                    binding: ShoeDetailsBinding(),
                    arguments: [
                      {"id": index},
                    ],
                  );
                },
                child: BodyCategoryItemWidget(
                  itemInfo: controller.shoeList[index],
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("JUST FOR YOU"),
                Text(
                  "VIEW ALL",
                  style: TextStyle(
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
          ...controller.shoeList.map(
            (data) => BodyNormalShopItemWidget(
              itemInfo: data,
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Text(
              '- MORE -',
              style: TextStyle(
                color: Colors.grey[400],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
