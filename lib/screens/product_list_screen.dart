import 'package:flutter/material.dart';
import 'package:gerente_de_apps/providers/products_provider.dart';
import 'package:gerente_de_apps/routes/route_paths.dart';
import 'package:provider/provider.dart';

import '../components/product_list.dart';
import '../components/product_overview_card.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gerente de Apps"),
      ),
      body: ChangeNotifierProvider(
        create: (context) => ProductsProvider(),
        child: const Column(
          children: [
            ProductOverviewCard(),
            ProductList(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).pushNamed(RoutePaths.PRODUCT_INSERT_SCREEN);
        },
      ),
    );
  }
}
