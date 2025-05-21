import 'package:flutter/material.dart';
import 'loginPage.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final phoneController = TextEditingController();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 60),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Create", style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
              const Text("Account", style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.indigo)),
              const SizedBox(height: 10),
              const Text("Let’s get started", style: TextStyle(color: Colors.grey)),
              const SizedBox(height: 40),

              const Text("* Name", style: TextStyle(color: Colors.red)),
              TextField(
                controller: nameController,
                decoration: const InputDecoration(hintText: "Your name", border: OutlineInputBorder()),
              ),
              const SizedBox(height: 20),

              const Text("* Phone Number", style: TextStyle(color: Colors.red)),
              TextField(
                controller: phoneController,
                decoration: const InputDecoration(hintText: "Your phone", border: OutlineInputBorder()),
              ),
              const SizedBox(height: 20),

              const Text("* Email", style: TextStyle(color: Colors.red)),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(hintText: "Email", border: OutlineInputBorder()),
              ),
              const SizedBox(height: 20),

              const Text("* Password", style: TextStyle(color: Colors.red)),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(hintText: "Password", border: OutlineInputBorder()),
              ),
              const SizedBox(height: 30),

              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                  onPressed: () {
                    // Sementara: kembali ke login setelah daftar
                    Navigator.pop(context);
                  },
                  child: const Text("Register", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                ),
              ),
              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account? "),
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Text("Login", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.indigo)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
