import 'package:flutter/material.dart';
import 'package:signbook/screen/auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:signbook/screen/home.dart';
import 'package:signbook/screen/login.dart';
import 'package:signbook/screen/signup.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const Auth(),
      routes: {
        '/': (context) => const Auth(),
        'Home': (context) => const Home(),
        'signup': (context) => const Signup(),
        'login': (context) => const Login(),
      },
    );
  }
}
