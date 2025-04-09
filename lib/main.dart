import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase Auth Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AuthenticationScreen(),
    );
  }
}

class AuthenticationScreen extends StatefulWidget {
  const AuthenticationScreen({super.key});

  @override
  _AuthenticationScreenState createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Authentication'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    try {
                      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                        email: _emailController.text,
                        password: _passwordController.text,
                      );
                      print('Signed up: ${credential.user?.email}');
                    } on FirebaseAuthException catch (e) {
                      print('Failed with error code: ${e.code}');
                      print(e.message);
                    }
                  },
                  child: const Text('Sign Up'),
                ),
                ElevatedButton(
                  onPressed: () async {
                    try {
                      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
                        email: _emailController.text,
                        password: _passwordController.text,
                      );
                      print('Logged in: ${credential.user?.email}');
                    } on FirebaseAuthException catch (e) {
                      print('Failed with error code: ${e.code}');
                      print(e.message);
                    }
                  },
                  child: const Text('Log In'),
                ),
              ],
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () async {
                try {
                  final GoogleSignIn googleSignIn = GoogleSignIn();
                  final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();

                  if (googleSignInAccount != null) {
                    final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;

                    final AuthCredential credential = GoogleAuthProvider.credential(
                      accessToken: googleSignInAuthentication.accessToken,
                      idToken: googleSignInAuthentication.idToken,
                    );

                    final UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(credential);

                    print('Signed in with Google: ${userCredential.user?.email}');
                  }
                } catch (e) {
                  print('Error signing in with Google: $e');
                }
              },
              child: const Text('Continue with Google'),
            ),
          ],
        ),
      ),
    );
  }
}
