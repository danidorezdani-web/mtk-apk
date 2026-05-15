import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/menu_screen.dart';
import 'screens/latihan_screen.dart';

void main() {
  runApp(const MathPremiumApp());
}

class MathPremiumApp extends StatelessWidget {
  const MathPremiumApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Math Premium',
      // Menggunakan tema warna yang elegan
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/menu': (context) => const MenuScreen(),
        '/latihan': (context) => const LatihanScreen(),
      },
    );
  }
}