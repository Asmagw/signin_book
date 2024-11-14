import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _email = TextEditingController();
  final _password = TextEditingController();
  Future signin() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _email.text.trim(),
      password: _password.text.trim(),
    );
  }

  @override
  void dispose() {
    // هنا يتم  تعطيل اذا لم يتم استخدامها
    super.dispose();
    _email.dispose();
    _password.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/Reading.png',
              height: 150,
            ),

            //Text
            const SizedBox(height: 20),

            Text(
              'تسجيل دخــول',
              style: GoogleFonts.robotoCondensed(
                  fontSize: 24, fontWeight: FontWeight.bold),
            ),
            //Email TextFiled
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    controller: _email,
                    decoration: const InputDecoration(
                        border: InputBorder.none, hintText: 'Email'),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            //password
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    controller: _password,
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'password',
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            //button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: GestureDetector(
                onTap: signin,
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 9, 17, 107),
                      borderRadius: BorderRadius.circular(12)),
                  child: Center(
                    child: Text('تسجيل دخــول ',
                        style: GoogleFonts.tajawal(
                            fontSize: 18, color: Colors.white)),
                  ),
                ),
              ),
            ),
             const SizedBox(height: 25),

            //Button text
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('ليس لديك حساب؟ ',
                    style: GoogleFonts.robotoCondensed(color: Colors.black)),
                Text(
                  ' حساب جديد',
                  style: GoogleFonts.robotoCondensed(color: Colors.blue),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
