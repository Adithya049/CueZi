import 'package:flutter/material.dart';
import 'auth_service.dart';

class LoginPage extends StatelessWidget {
  final AuthService authService = AuthService();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton.icon(
          icon: Image.asset("assets/google_logo.png", height: 24), // Add a Google logo
          label: Text("Sign in with Google"),
          onPressed: () async {
            final user = await authService.signInWithGoogle();
            if (user != null) {
              Navigator.pushReplacementNamed(context, "/home"); // Navigate after login
            }
          },
        ),
      ),
    );
  }
}
