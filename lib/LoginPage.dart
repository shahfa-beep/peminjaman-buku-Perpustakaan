import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController inputEmail = TextEditingController();
  final TextEditingController inputPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 249, 237, 232),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Color.fromARGB(255, 34, 34, 34)),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image(
                  image: AssetImage('asset/icon_user_512.png'),
                  width: 200,
                  height: 200,
                ),
              ),
              const SizedBox(height: 12),

              // Teks "Login sebagai User"
              const Text(
                "Login sebagai\nUser",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 34, 34, 34),
                ),
              ),
              const SizedBox(height: 35),

              // Input Email
              SizedBox(
                width: 300,
                child: TextField(
                  controller: inputEmail,
                  decoration: InputDecoration(
                    hintText: 'EMAIL',
                    hintStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(138, 0, 0, 0),
                    ),
                    filled: true,
                    fillColor: const Color.fromARGB(128, 232, 149, 155),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 16,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Input PASSWORD
              SizedBox(
                width: 300,
                child: TextField(
                  controller: inputPassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'PASSWORD',
                    hintStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(138, 0, 0, 0),
                    ),
                    filled: true,
                    fillColor: const Color.fromARGB(128, 232, 149, 155),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 16,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 28),

              // Tombol LOGIN
              SizedBox(
                width: 140,
                child: ElevatedButton(
                  onPressed: () {
                    print("Email: ${inputEmail.text}");
                    print("Password: ${inputPassword.text}");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 212, 124, 132),
                    foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text(
                    "LOGIN",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}