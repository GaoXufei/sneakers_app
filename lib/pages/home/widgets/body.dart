import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sneakers_app/common/entities/entities.dart';

import '../controller.dart';

class BodyWidget extends GetView<HomeController> {
  // 数据列表
  final List<ShoeEntity> shoeList = [
    ShoeEntity(
      name: "Nike Air Jordan 1 Retro High",
      desc: "Familiar but always fresh, the iconic Air Jordan",
      price: 184,
      color: Colors.blueGrey,
      brand: "Nike",
      imgPath: "images/shoe/1.png",
    ),
    ShoeEntity(
      name: "Nike Air Jordan 1 Retro High",
      desc: "Familiar but always fresh, the iconic Air Jordan",
      price: 123,
      color: Colors.blueGrey,
      brand: "Nike",
      imgPath: "images/shoe/2.png",
    ),
    ShoeEntity(
      name: "Nike Air Jordan 1 Retro High",
      desc: "Familiar but always fresh, the iconic Air Jordan 1",
      price: 321,
      color: Colors.blueGrey,
      brand: "Nike",
      imgPath: "images/shoe/3.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
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
        ...shoeList.map(
          (data) => Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10.0),
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
                      Text(
                        "${data.name}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "${data.brand}",
                        style: TextStyle(
                          color: Colors.grey[500],
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
    );
  }
}
