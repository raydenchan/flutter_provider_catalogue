import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'catalog.dart';
import 'cart.dart';
import 'login.dart';

final router = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
        path: '/login',
        builder: (BuildContext context, GoRouterState state) {
          return const LoginPage();
        }),
    GoRoute(
        path: '/catalog',
        builder: (BuildContext context, GoRouterState state) {
          return const CatalogPage();
        }),
    GoRoute(
        path: '/cart',
        builder: (BuildContext context, GoRouterState state) {
          return const CartPage();
        }),
  ],
);
