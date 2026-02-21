import 'package:flutter/material.dart';

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