import 'package:flutter/material.dart';
import 'registerPage.dart';
import 'homePage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Hello", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
            const Text("Again!", style: TextStyle(fontSize: 32, color: Colors.indigo, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            const Text("Welcome back you’ve been missed", style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 24),
            const TextField(
              decoration: InputDecoration(labelText: 'Email', prefixIcon: Icon(Icons.email)),
            ),
            const SizedBox(height: 12),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password', prefixIcon: Icon(Icons.lock)),
            ),
            const SizedBox(height: 8),
            Align(
              alignment: Alignment.centerRight,
              child: Text("Forgot password ?", style: TextStyle(color: Colors.red)),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // 👇 Pindah ke halaman Home
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo,
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account? "),
                GestureDetector(
                  onTap: () {
                    // 👇 Pindah ke halaman Register
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const RegisterPage()),
                    );
                  },
                  child: const Text("Sign Up", style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.bold)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
