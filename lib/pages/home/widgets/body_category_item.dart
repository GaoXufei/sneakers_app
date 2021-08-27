import 'package:flutter/material.dart';
import 'package:sneakers_app/common/entities/entities.dart';
import 'package:sneakers_app/pages/home/widgets/widgets.dart';
import 'dart:math' as math;

class BodyCategoryItemWidget extends StatelessWidget {
  const BodyCategoryItemWidget({
    Key? key,
    required this.itemInfo,
  }) : super(key: key);

  final ShoeEntity itemInfo;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      padding: const EdgeInsets.only(top: 30),
      width: 230,
      child: Stack(
        children: [
          ClipPath(
            clipper: BodyClipper(cornerSize: 25, diagonalHeight: 100),
            child: Container(
              width: 230,
              color: itemInfo.color,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    // ! 左边logo name price
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Icon(
                            Icons.trending_up,
                            size: 40,
                            color: Colors.white,
                          ),
                        ),
                        Expanded(child: SizedBox()),
                        Container(
                          width: 125.0,
                          child: Text(
                            "${itemInfo.name}",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "\$ ${itemInfo.price}",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 16),
                      ],
                    ),
                  ),
                  // ! 右下角
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.2),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                        ),
                      ),
                      width: 50,
                      height: 50,
                      child: Icon(Icons.add, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 20,
            child: Transform.rotate(
              angle: -math.pi / 7,
              child: Image.asset(
                "assets/${itemInfo.imgPath}",
                width: 200,
              ),
            ),
          )
        ],
      ),
    );
  }
}
