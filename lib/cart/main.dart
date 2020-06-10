import 'package:flutter/material.dart';
import 'package:flutterexample/cart/screens/cart.dart';
import 'package:flutterexample/cart/screens/catalog.dart';
import 'package:provider/provider.dart';

import 'models/cartmodel.dart';
import 'models/catalogmodel.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CartModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => CatalogModel(),
        )
      ],
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => Catalog(),
          "/cart": (context) => Cart(),
        },
      ),
    );
  }
}