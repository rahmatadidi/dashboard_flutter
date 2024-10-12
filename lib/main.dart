// main.dart
import 'package:flutter/material.dart';
import 'screens/dashboard_screen.dart'; // Import dashboard screen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      // ignore: prefer_const_constructors
      home: DashboardScreen(), // Memanggil DashboardScreen sebagai home
    );
  }
}
