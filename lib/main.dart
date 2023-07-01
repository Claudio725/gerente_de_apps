import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gerente_de_apps/firebase_options.dart';
import 'package:gerente_de_apps/routes/route_paths.dart';
import 'package:gerente_de_apps/screens/product_insert_screen.dart';
import 'package:gerente_de_apps/screens/product_list_screen.dart';
import 'package:gerente_de_apps/screens/product_show_screen.dart';

import 'screens/sign_in_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // home: ProductListScreen(_products),
        routes: {
          RoutePaths.SIGN_IN_SCREEN: (context) => const SignInScreen(),
          RoutePaths.PRODUCTS_LIST_SCREEN: (context) =>
              const ProductListScreen(),
          RoutePaths.PRODUCT_SHOW_SCREEN: (context) =>
              const ProductShowScreen(),
          RoutePaths.PRODUCT_INSERT_SCREEN: (context) =>
              const ProductInsertScreen(),
        });
  }
}
