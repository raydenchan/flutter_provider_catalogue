import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'router.dart' as app_router;
import 'theme.dart' as app_theme;
import 'models/catalog.dart';
import 'models/cart.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context) => CatalogModel()),
        ChangeNotifierProxyProvider<CatalogModel, CartModel>(
          create: (context) => CartModel(),
          update: (context, catalog, cart) {
            if (cart == null) throw ArgumentError.notNull('cart');
            cart.catalog = catalog;
            return cart;
          },
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: "Flutter Provider Catalogue",
        routerConfig: app_router.router,
        theme: app_theme.theme,
      ),
    );
  }
}
