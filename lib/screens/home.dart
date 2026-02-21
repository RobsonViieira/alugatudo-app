import 'package:flutter/material.dart';
import 'add_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final List<Map<String, String>> itens = [
    {"nome": "PlayStation 5", "preco": "R\$ 50 / dia"},
    {"nome": "Furadeira", "preco": "R\$ 15 / dia"},
  ];

  void adicionarItem(String nome, String preco) {
    setState(() {
      itens.add({
        "nome": nome,
        "preco": "R\$ $preco / dia"
      });
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text('AlugaTudo'),

        actions: [
          IconButton(
            icon: const Icon(Icons.add),

            onPressed: () async {

              final novoItem = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AddItemScreen(),
                ),
              );

              if (novoItem != null) {
                adicionarItem(
                  novoItem["nome"],
                  novoItem["preco"],
                );
              }
            },
          ),
        ],
      ),

      body: ListView.builder(

        padding: const EdgeInsets.all(10),

        itemCount: itens.length,

        itemBuilder: (context, index) {

          return Card(

            margin: const EdgeInsets.only(bottom: 10),

            child: ListTile(

              leading: const Icon(Icons.inventory),

              title: Text(itens[index]["nome"]!),

              subtitle: Text(itens[index]["preco"]!),

              trailing: ElevatedButton(
                onPressed: () {},
                child: const Text('Alugar'),
              ),
            ),
          );
        },
      ),
    );
  }
}