import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'homepage.dart';
import 'login.dart';

final router = GoRouter(
  initialLocation: '/homepage',
  routes: [
    GoRoute(
        path: '/login',
        builder: (BuildContext context, GoRouterState state) {
          return const LoginPage();
        }),
    GoRoute(
        path: '/homepage',
        builder: (BuildContext context, GoRouterState state) {
          return const Homepage();
        }),
  ],
);
