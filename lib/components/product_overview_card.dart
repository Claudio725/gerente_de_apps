import 'package:flutter/material.dart';
import 'package:gerente_de_apps/providers/products_provider.dart';
import 'package:provider/provider.dart';

class ProductOverviewCard extends StatelessWidget {
  const ProductOverviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final products = Provider.of<ProductsProvider>(context);
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Total",
            style: TextStyle(fontSize: 36.0),
          ),
          Column(
            children: [
              const Text("Quant"),
              Text(
                "${products.countItens()}",
                style: const TextStyle(fontSize: 36.0),
              ),
            ],
          ),
          Column(
            children: [
              const Text("R\$"),
              Text(
                products.totalPrice(),
                style: const TextStyle(fontSize: 36.0),
              ),
            ],
          )
        ],
      ),
    );
  }
}
