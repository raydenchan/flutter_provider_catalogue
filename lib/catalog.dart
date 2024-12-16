import 'package:flutter/material.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Catalog",
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
    );
  }
}
