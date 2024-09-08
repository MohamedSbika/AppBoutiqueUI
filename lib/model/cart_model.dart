import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
//liste des produits

  final List _shopItems = [
    ["Converse", "130", "lib/images/1.jpg", Colors.grey],
    ["Balenciaga", "120", "lib/images/2.jpg", Colors.grey],
    ["Nike Jordan", "90", "lib/images/3.jpg", Colors.grey],
    ["Nike Air Force", "90", "lib/images/4.jpg", Colors.grey],
    ["Converse Low", "100", "lib/images/5.jpg", Colors.grey],
    ["Nike Air Max", "80", "lib/images/6.jpg", Colors.grey],
  ];

  List _cartItems = [];

  get shopItems => _shopItems;
  get cartItems => _cartItems;

  // ajouter items dans panier
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // effacer items de panier
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // calculer prix total
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
