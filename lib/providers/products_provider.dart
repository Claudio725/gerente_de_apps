import 'package:flutter/material.dart';
import 'package:gerente_de_apps/services/products_service.dart';

import '../models/product.dart';

class ProductsProvider with ChangeNotifier {
  List<Product> itens = [];

  Future<List<Product>> list() async {
    if (itens.isEmpty) {
      itens = await ProductsService().list();
    }
    return itens;
  }

  void addItem(Product product) {
    product.valor++;
    notifyListeners();
  }

  void removeItem(Product product) {
    if (product.valor > 0) {
      product.valor--;
      notifyListeners();
    }
  }

  int countItens() => itens.fold(0, (acc, p) => acc + p.valor);
  String totalPrice() =>
      itens.fold(0.0, (acc, p) => acc + p.valor).toStringAsFixed(2);

  void deleteItem(Product product) async {
    // bool isDeleted = await ProductsService.delete(product.id);
    // if (isDeleted) {
    // itens.remove(product);
    // notifyListeners();
    // }
  }
}
