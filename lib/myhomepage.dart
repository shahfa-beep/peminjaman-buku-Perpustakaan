import 'package:flutter/material.dart';
import 'LoginPage.dart'; // Menghubungkan ke file loginpage.dart

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController inputUsername = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perpustakaan"),
        backgroundColor: const Color.fromARGB(0, 231, 147, 224),
      ),
      backgroundColor: const Color.fromARGB(245, 80, 214, 248),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              child: TextFormField(
                decoration: InputDecoration(
                  fillColor: const Color.fromARGB(255, 91, 108, 199),
                  hintText: 'Masukan Nama Kamu',
                  filled: true,
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    borderSide: BorderSide.none,
                  ),
                ),
                controller: inputUsername,
              ),
            ),
            const Padding(padding: EdgeInsets.all(16)),

            // Tombol untuk pindah/terhubung ke halaman Login
            ElevatedButton(
              child: const Text("Ke Halaman Login Perpustakaan"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Login()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}