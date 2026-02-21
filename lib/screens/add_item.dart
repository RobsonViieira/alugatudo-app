import 'package:flutter/material.dart';

class AddItemScreen extends StatefulWidget {
  const AddItemScreen({super.key});

  @override
  State<AddItemScreen> createState() => _AddItemScreenState();
}

class _AddItemScreenState extends State<AddItemScreen> {

  final nomeController = TextEditingController();
  final precoController = TextEditingController();

  @override
  Widget build(BuildContext context) {

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

                if (nomeController.text.isEmpty ||
                    precoController.text.isEmpty) {
                  return;
                }

                Navigator.pop(
                  context,
                  {
                    "nome": nomeController.text,
                    "preco": precoController.text,
                  },
                );
              },
              child: const Text('Salvar'),
            ),
          ],
        ),
      ),
    );
  }
}