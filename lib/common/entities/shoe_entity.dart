import 'dart:convert';

import 'package:flutter/material.dart';

class ShoeEntity {
  final String name;
  final double price;
  final String desc;
  final Color color;
  final String brand;
  final String imgPath;

  ShoeEntity({
    required this.name,
    required this.price,
    required this.desc,
    required this.color,
    required this.brand,
    required this.imgPath,
  });

  ShoeEntity copyWith({
    String? name,
    double? price,
    String? desc,
    Color? color,
    String? brand,
    String? imgPath,
  }) {
    return ShoeEntity(
      name: name ?? this.name,
      price: price ?? this.price,
      desc: desc ?? this.desc,
      color: color ?? this.color,
      brand: brand ?? this.brand,
      imgPath: imgPath ?? this.imgPath,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'price': price,
      'desc': desc,
      'color': color.value,
      'brand': brand,
      'imgPath': imgPath,
    };
  }

  factory ShoeEntity.fromMap(Map<String, dynamic> map) {
    return ShoeEntity(
      name: map['name'],
      price: map['price'],
      desc: map['desc'],
      color: Color(map['color']),
      brand: map['brand'],
      imgPath: map['imgPath'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ShoeEntity.fromJson(String source) =>
      ShoeEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ShoeEntity(name: $name, price: $price, desc: $desc, color: $color, brand: $brand, imgPath: $imgPath)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ShoeEntity &&
        other.name == name &&
        other.price == price &&
        other.desc == desc &&
        other.color == color &&
        other.brand == brand &&
        other.imgPath == imgPath;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        price.hashCode ^
        desc.hashCode ^
        color.hashCode ^
        brand.hashCode ^
        imgPath.hashCode;
  }
}
