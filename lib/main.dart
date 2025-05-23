import 'package:flutter/material.dart';
import 'package:newshive/views/bookmarkPage.dart';
import 'views/loginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const BookmarkScreen(), // Tampilan pertama saat aplikasi dibuka
    );
  }
}
