import 'package:flutter/material.dart';
import 'package:gerente_de_apps/models/product.dart';
import 'package:gerente_de_apps/providers/products_provider.dart';
import 'package:provider/provider.dart';

import '../routes/route_paths.dart';

class ProductListItem extends StatelessWidget {
  const ProductListItem(
    this.product, {
    super.key,
  });

  final Product product;

  String _formatSubtitle() {
    String price = product.valor.toStringAsFixed(2);
    return "R\$ $price ";
  }

  @override
  Widget build(BuildContext context) {
    final products = Provider.of<ProductsProvider>(context);
    return ListTile(
      leading: IconButton(
        icon: const Icon(Icons.delete),
        onPressed: () => products.removeItem(product),
      ),
      title: Text(product.nome),
      subtitle: Text(_formatSubtitle()),
      trailing: IconButton(
        icon: const Icon(Icons.add),
        onPressed: () => products.addItem(product),
      ),
      onTap: () {
        Navigator.of(context)
            .pushNamed(RoutePaths.PRODUCT_SHOW_SCREEN, arguments: product);
        // Navigator.of(context)
        // .p
      },
    );
  }
}
