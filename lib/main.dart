import 'package:flutter/material.dart';
import 'views/login.dart';

void main() {
  runApp(const CarlistApp());
}

class CarlistApp extends StatelessWidget {
  const CarlistApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Carlist',
      debugShowCheckedModeBanner: false,
      // Pengaturan tema aplikasi dengan warna hijau (Forest Green)
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF2E7D32),
          primary: const Color(0xFF2E7D32),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF2E7D32),
          foregroundColor: Colors.white,
          elevation: 0,
        ),
      ),
      home: const LoginPage(), // Halaman pertama yang dimuat saat aplikasi dijalankan
    );
  }
}