import 'package:flower_shop/models/product_model/product_model.dart';
import 'package:flutter/material.dart';

class CartProvider with ChangeNotifier {
  List<ProductModel> myProducts = [];
  double totalPrice = 0;
  addProductToMyList(ProductModel product) {
    myProducts.add(product);
    totalPrice += product.price!;
    totalPrice = double.parse(totalPrice.toStringAsFixed(2));
    notifyListeners();
  }

  deleteProductFromMyList(ProductModel product) {
    myProducts.remove(product);
    totalPrice -= product.price!;
    totalPrice = double.parse(totalPrice.toStringAsFixed(2));
    notifyListeners();
  }
}
