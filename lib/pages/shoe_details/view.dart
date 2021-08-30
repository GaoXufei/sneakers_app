import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:sneakers_app/common/entities/entities.dart';
import 'package:sneakers_app/common/utils/ui_clipper.dart';

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
        title: Text("New Collection"),
        leading: IconButton(
          onPressed: Get.back,
          icon: Icon(
            Icons.arrow_back_ios,
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
                height: MediaQuery.of(context).size.height * 0.8,
                width: MediaQuery.of(context).size.width,
                child: ClipPath(
                  clipper: UiClipper(cornerSize: 50, diagonalHeight: 180),
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
                                width: 16,
                                height: 16,
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
          ],
        ),
      ),
    );
  }
}
