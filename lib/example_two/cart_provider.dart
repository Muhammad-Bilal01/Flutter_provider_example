import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:provider_example/example_two/product.dart';

class CartProvider extends ChangeNotifier {
  final List<Product> _cartItem = [];

  UnmodifiableListView get cartItem => UnmodifiableListView(_cartItem);

// get Total Price
  double get price => _cartItem.fold<double>(
      0.0, (previousValue, element) => previousValue += element.price);

// Add Item
  void addItem(Product item) {
    _cartItem.add(item);
    notifyListeners();
    print("Item Added");
  }

  // Add Item
  void removeItem(Product item) {
    _cartItem.remove(item);
    notifyListeners();
    print("Item Removed");
  }

// Clear Cart
  void resetCart() {
    _cartItem.clear();
    notifyListeners();
  }
}
