import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shop/data/dummy_data.dart';
import 'package:shop/providers/product.dart';

class Products with ChangeNotifier {
  List<Product> _items = DUMMY_PRODUCTS;

  bool _showFavoriteOnly = false;

  List<Product> get items {
    if (_showFavoriteOnly) {
      return _items.where((prod) => prod.isFavorite).toList();
    }
    return [..._items];
  }

  int get itemsCount => _items.length;

  void addProduct(Product newProduct) {
    _items.add(Product(
      id: Random().nextDouble().toString(),
      title: newProduct.title,
      description: newProduct.description,
      price: newProduct.price,
      imageUrl: newProduct.imageUrl,
    ));
    notifyListeners();
  }

  void updateProduct(Product prod) {
    if (prod == null || prod.id == null) {
      return;
    }

    final index = _items.indexWhere((p) => p.id == prod.id);
    if (index >= 0) {
      _items[index] = prod;
      notifyListeners();
    }
  }

  void deleteProduct(String id) {
    final index = _items.indexWhere((p) => p.id == id);
    if (index >= 0) {
      _items.removeWhere((p) => p.id == id);
      notifyListeners();
    }
  }

  void showFavoriteOnly() {
    _showFavoriteOnly = true;
    notifyListeners();
  }

  void showAll() {
    _showFavoriteOnly = false;
    notifyListeners();
  }
}
