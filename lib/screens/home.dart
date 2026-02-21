import 'package:flutter/material.dart';
import 'add_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('AlugaTudo'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AddItemScreen(),
                ),
              );
            },
          ),
        ],
      ),

      body: ListView(
        padding: const EdgeInsets.all(10),
        children: const [

          ItemCard(
            nome: 'PlayStation 5',
            preco: 'R\$ 50 / dia',
          ),

          ItemCard(
            nome: 'Furadeira',
            preco: 'R\$ 15 / dia',
          ),

          ItemCard(
            nome: 'Bicicleta',
            preco: 'R\$ 20 / dia',
          ),
        ],
      ),
    );
  }
}

class ItemCard extends StatelessWidget {

  final String nome;
  final String preco;

  const ItemCard({
    super.key,
    required this.nome,
    required this.preco,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: const Icon(Icons.inventory),
        title: Text(nome),
        subtitle: Text(preco),
        trailing: ElevatedButton(
          onPressed: () {},
          child: const Text('Alugar'),
        ),
      ),
    );
  }
}