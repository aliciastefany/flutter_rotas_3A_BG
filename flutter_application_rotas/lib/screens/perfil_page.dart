import 'package:flutter/material.dart';

class PerfilPage extends StatelessWidget{
  const PerfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('Tela Perfil')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Conteúdo da tela do perfil'),
            SizedBox(height: 20),
            Text('Conteúdo do corpo da tela do perfil'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: (){Navigator.pop(context);}, 
              child: Text('Acessar a tela inicial')
            )
          ],
        ),
      )
    );
  }
}