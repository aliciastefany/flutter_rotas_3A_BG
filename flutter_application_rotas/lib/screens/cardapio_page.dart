import 'package:flutter/material.dart';

class CardapioPage extends StatefulWidget{
  const CardapioPage({super.key});

  @override
  State<CardapioPage> createState() => _CardapioPageState();

}

class _CardapioPageState extends State<CardapioPage>{
  List<Map<String,String>> pizzas = [
    {"nome": "Calabresa", "descricao":"Calabresa, cebola e queijo"},
    {"nome": "Marguerita", "descricao":"Molho, queijo, tomate e majericão"},
    {"nome": "Portuguesa", "descricao":"Presunto, ovo, cebola e azeitona"},
    {"nome": "Frango com catupiry", "descricao":"Frango desfiado e catupiry"},
    {"nome": "Quatro queijos", "descricao":"mix de queijos especiais"},
  ];

  String busca="";

  @override
  Widget build(BuildContext context) {
    final listFiltrada = pizzas
      .where((pizza)=>pizza["nome"]!.toLowerCase().contains(busca.toLowerCase())).toList();

    return Scaffold(
      appBar: AppBar(title:Text('Cardapio')),
      body: Column(
        children: [
          //Caixa de pesquisa
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Pesquisar pizza...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
              ),
              onChanged: (value){
                setState(() {
                  busca=value;
                });
              },
            )
          ),

          //Lista de pizzas
          Expanded(
            child: ListView.builder(
              itemCount: listFiltrada.length,
              itemBuilder: (context, index){
                final pizza = listFiltrada[index];

                return Card(
                  margin: EdgeInsets.all(10),
                  elevation:4,
                  child: ListTile(
                    leading: Icon(Icons.local_pizza, color: Colors.red),
                    title: Text(pizza["nome"]!),
                    subtitle: Text(pizza["descricao"]!),
                    trailing: Icon(Icons.arrow_forward),
                  )
                );
              }
            )
          )
        ]
      )
    );
  }
}