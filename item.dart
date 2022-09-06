import 'package:flutter/material.dart';

class Item {
  int id;
  String name;
  int quantity;
  int price;
  String category;
  AssetImage itemImage;
  String description;

  Item({
    required this.id,
    required this.name,
    required this.quantity,
    required this.price,
    required this.category,
    required this.itemImage,
    required this.description,
  });

  factory Item.fromMap(Map<String, dynamic> json) => new Item(
        id: json['id'],
        name: json['name'],
        quantity: json['quantity'],
        price: json['price'],
        category: json['category'],
        itemImage: json['itemImage'],
        description: json['description'],
      );

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'quantity': quantity,
      'price': price,
      'category': category,
      'itemImage': itemImage,
      'description': description,
    };
  }
}
