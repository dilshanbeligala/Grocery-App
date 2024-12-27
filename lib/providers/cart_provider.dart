import 'package:flutter/material.dart';
import '../models/grocery_item.dart';

class CartProvider with ChangeNotifier {
  final List<GroceryItem> _items = [];
  double _total = 0.0;

  List<GroceryItem> get items => _items;
  double get total => _total;

  void addItem(GroceryItem item) {
    _items.add(item);
    _total += item.price;
    notifyListeners();
  }

  void removeItem(GroceryItem item) {
    _items.remove(item);
    _total -= item.price;
    notifyListeners();
  }

  void clearCart() {
    _items.clear();
    _total = 0.0;
    notifyListeners();
  }
}

