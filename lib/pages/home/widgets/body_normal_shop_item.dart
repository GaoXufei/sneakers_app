import 'package:flutter/material.dart';
import 'package:sneakers_app/common/entities/entities.dart';

class BodyNormalShopItemWidget extends StatelessWidget {
  const BodyNormalShopItemWidget({
    Key? key,
    required this.itemInfo,
  }) : super(key: key);

  final ShoeEntity itemInfo;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10.0,
      ),
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
            "assets/${itemInfo.imgPath}",
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
                    "${itemInfo.name}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  "${itemInfo.brand}",
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
            "\$${itemInfo.price.toInt()}",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
