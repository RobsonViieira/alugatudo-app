import 'package:flutter/material.dart';

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
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AlugaTudo'),
      ),
      body: const Center(
        child: Text(
          'Bem-vindo ao AlugaTudo 🚀',
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}