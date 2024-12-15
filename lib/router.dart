import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'homepage.dart';
import 'login.dart';

final router = GoRouter(
  initialLocation: '/login',
  routes: <RouteBase>[
    GoRoute(
      path: '/login',
      builder: (BuildContext context, GoRouterState state) {
        return const LoginPage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'details',
          builder: (BuildContext context, GoRouterState state) {
            return const Homepage();
          },
        ),
      ],
    ),
  ],
);
