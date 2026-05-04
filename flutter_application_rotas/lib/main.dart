import 'package:flutter/material.dart';
import './screens/home_page.dart';
import './screens/perfil_page.dart';

void main(){
  runApp(const MainApp());
}

class MainApp extends StatelessWidget{
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context)=> const HomePage(),
        '/perfil': (context)=> const PerfilPage()
      }
    );
  }
}