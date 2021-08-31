import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:sneakers_app/common/entities/entities.dart';
import 'package:sneakers_app/common/utils/ui_clipper.dart';
import 'dart:math' as math;

import 'index.dart';
import 'widgets/widgets.dart';

class ShoeDetailsPage extends GetView<ShoeDetailsController> {
  final ShoeEntity shoeEntity;

  ShoeDetailsPage({required this.shoeEntity});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBarWidget(),
      // body: BodyWidget(),
      backgroundColor: shoeEntity.color,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          "New Collection",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          onPressed: Get.back,
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.75,
                width: MediaQuery.of(context).size.width,
                child: ClipPath(
                  clipper: UiClipper(
                    cornerSize: 50,
                    diagonalHeight: 180,
                    roundedBottom: false,
                  ),
                  child: Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 180.0,
                        left: 16,
                        right: 16,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // ! 标题
                          Container(
                            width: 260,
                            // padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Text(
                              "${shoeEntity.name}",
                              style: TextStyle(
                                fontSize: 32,
                              ),
                            ),
                          ),
                          SizedBox(height: 16),
                          // ! Star
                          Row(
                            children: [
                              RatingBar.builder(
                                initialRating: 3,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 20,
                                itemBuilder: (context, _) => Icon(
                                  Icons.star_outline,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                              SizedBox(width: 10),
                              Text(
                                "134 Reviews",
                                style: TextStyle(
                                  color: Colors.grey[400],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 16),
                          // ! Details
                          Text(
                            "DETAILS",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 16),
                          Text(
                            "${shoeEntity.desc}",
                            style: TextStyle(
                              color: Colors.grey[400],
                            ),
                          ),
                          SizedBox(height: 16),
                          Text(
                            "COLOR OPTIONS",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 16),
                          // ! 颜色
                          Row(
                            children: [
                              Container(
                                width: 20,
                                height: 20,
                                margin: const EdgeInsets.only(right: 16),
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(50),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Hero(
                tag: "hero${shoeEntity.imgPath}",
                child: Transform.rotate(
                  angle: -math.pi / 7,
                  child: Image.asset(
                    "assets/${shoeEntity.imgPath}",
                    width: MediaQuery.of(context).size.width * .9,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      extendBody: true,
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10.0,
            ),
          ],
        ),
        height: 90.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // ! price
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "PRICE",
                  style: TextStyle(
                    color: Colors.grey[300],
                  ),
                ),
                Text(
                  "\$${shoeEntity.price.toInt()}",
                  style: TextStyle(
                    fontSize: 32,
                  ),
                ),
              ],
            ),
            // ! add cart
            Container(
              child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Colors.greenAccent,
                  ),
                  fixedSize: MaterialStateProperty.all(Size.fromHeight(60)),
                  padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(horizontal: 50),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                child: Text(
                  "ADD CART",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
