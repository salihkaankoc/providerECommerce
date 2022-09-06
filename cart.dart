import 'dart:collection';

import 'package:denemeproje/models/item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartModel extends ChangeNotifier {
  final List<Item> _items = [];

  UnmodifiableListView<Item> get items => UnmodifiableListView(_items);

  void addItem(int id, Item item) {
    _items.add(item);
    notifyListeners();
  }

  void clearItem() {
    _items.clear();
    notifyListeners();
  }

  void removeItem(Item item) {
    _items.remove(item);
    notifyListeners();
  }

  int quantity(int id) {
    return _items[id].quantity;
  }

  int get totalPrice {
    int total = 0;
    for (int i = 0; i < _items.length; i++) {
      total += _items[i].quantity * _items[i].price;
    }
    return total;
  }
}
