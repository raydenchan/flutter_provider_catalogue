import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _HomepageState();
}

class _HomepageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Login Page",
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
    );
  }
}
