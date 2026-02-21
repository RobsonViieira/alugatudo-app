import 'package:flutter/material.dart';

class AddItemScreen extends StatelessWidget {
  const AddItemScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final nomeController = TextEditingController();
    final precoController = TextEditingController();

    return Scaffold(

      appBar: AppBar(
        title: const Text('Cadastrar Item'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            TextField(
              controller: nomeController,
              decoration: const InputDecoration(
                labelText: 'Nome do item',
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              controller: precoController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Preço por dia (R\$)',
              ),
            ),

            const SizedBox(height: 25),

            ElevatedButton(
              onPressed: () {

                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Item cadastrado (simulado) ✅'),
                  ),
                );

                Navigator.pop(context);
              },
              child: const Text('Salvar'),
            ),
          ],
        ),
      ),
    );
  }
}