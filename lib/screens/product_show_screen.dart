import 'package:flutter/material.dart';
import 'package:gerente_de_apps/models/product.dart';

class ProductShowScreen extends StatelessWidget {
  const ProductShowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // var arg =
    Product product = ModalRoute.of(context)?.settings.arguments as Product;

    return Scaffold(
      appBar: AppBar(
        title: Text(product.nome),
      ),
      body: Column(
        children: [
          //Image.network(product.imageUrl),
          Text(
            product.nome,
            style: const TextStyle(fontSize: 30.0),
          ),
          Text(
            product.valor.toStringAsFixed(2),
            style: const TextStyle(fontSize: 30.0),
          ),
          // Text(
          //   product.location,
          //   style: const TextStyle(fontSize: 30.0),
          // )
        ],
      ),
    );
  }
}
