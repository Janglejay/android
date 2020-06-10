import 'package:flutter/material.dart';

/// ----------
class Product {
  double price;
  String name;

  Product(this.price, this.name);
}

class CatalogModel with ChangeNotifier {
  List<Product> _products = [];

  // 也可以声明为listProducts()方法，但是调用时不同
  List<Product> listProducts() {
    return _products;
  }

  // 方法名称可以像业务方法一样命名
  loadProducts() async {
    _products = await Future.delayed(Duration(seconds: 2), () {
      return [
        Product(1.5, 'Bread'),
        Product(32.9, 'Mike'),
        Product(7.5, 'Instant Noodles'),
        Product(3.0, 'Coke'),
        Product(9, 'Coffee'),
        Product(8.8, "Lays"),
        Product(9, 'Cake'),
        Product(4.6, 'Egg'),
        Product(9.5, 'berry'),
        Product(19, 'Ham Sausage'),
        Product(2.9, 'Melon Seeds'),
        Product(10.9, 'Chocolate'),
      ];
    });
    notifyListeners();
  }
}
