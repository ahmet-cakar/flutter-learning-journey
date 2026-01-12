import 'package:catalog_2_cart_state_exm1/product.dart';
import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List<Product> _items = [];

  final List<Product> _cartItems = [];

  List<Product> get cartItems => _cartItems;

  void addCartItem(Product item) {
    _cartItems.add(item);
    notifyListeners();
  }

  void removeCartAll() {
    _cartItems.clear();
    notifyListeners();
  }

  double totalPrice() {
    double totalPrice = 0;
    for (var item in _cartItems) {
      totalPrice += item.price;
    }
    return totalPrice;
  }

  List<Product> getItems() {
    return _items;
  }

  List<Product> get items => _items;

  void addItem(Product item) {
    _items.add(item);
    notifyListeners();
  }

  void removeAll() {
    _items.clear();
    notifyListeners();
  }
}
