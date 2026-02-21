import 'package:flutter/material.dart';
import 'screens/login.dart';

void main() {
  runApp(const AlugaTudoApp());
}

class AlugaTudoApp extends StatelessWidget {
  const AlugaTudoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AlugaTudo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(),
    );
  }
}