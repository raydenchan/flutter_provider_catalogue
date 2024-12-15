import 'package:flutter/material.dart';
import 'router.dart' as app_router;

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: "Flutter Provider Catalogue",
        routerConfig: app_router.router);
  }
}
