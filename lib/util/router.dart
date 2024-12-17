import 'package:go_router/go_router.dart';
import '../view/catalog.dart';
import '../view/cart.dart';
import '../view/login.dart';

final router = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
        path: '/login',
        builder: (context, state) {
          return const LoginPage();
        }),
    GoRoute(
        path: '/catalog',
        builder: (context, state) {
          return const CatalogPage();
        },
        routes: [
          GoRoute(
              path: 'cart',
              builder: (context, state) {
                return const CartPage();
              }),
        ]),
  ],
);
