import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(80.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sign In',
                style: Theme.of(context).textTheme.displayLarge,
              ),

              // Spacing
              const SizedBox(
                height: 20,
              ),

              // Username textfield
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Username',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                ),
              ),

              // Password textfield
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                ),
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                ),
                obscureText: true,
              ),

              // Spacing
              const SizedBox(
                height: 20,
              ),

              // Submit button
              ElevatedButton(
                onPressed: () {
                  context.pushReplacement('/catalog');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                ),
                child:
                    const Text('Submit', style: TextStyle(color: Colors.white)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
