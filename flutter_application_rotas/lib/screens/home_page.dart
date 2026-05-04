import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tela Inicial')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color:Colors.blue),
              child: Text('Menu', style: TextStyle(color: Colors.white))
            ),
            ListTile(
              title: Text('Home'),
              onTap: (){Navigator.pop(context);}
            ),
            ListTile(
              title: Text('Pefil'),
              onTap: (){Navigator.pushNamed(context, '/perfil');}
            )
          ],
        ),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Conteúdo da Tela Inicial'),
            SizedBox(height: 20),
            Text('Conteúdo do corpo da tela inicial.'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: (){Navigator.pushNamed(context, '/perfil');}, 
              child: Text('Acessar o Perfil')
            )
          ],
        ),
      )
    );
  }
}