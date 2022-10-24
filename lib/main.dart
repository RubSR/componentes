import 'package:componentes/pages/alert_page.dart';
import 'package:componentes/pages/avatar_page.dart';
import 'package:componentes/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      //Home sirve si tenemos una pantalla
      // con varias?
      routes: <String,WidgetBuilder>{
        //Crearemos nuestras rutas
        '/': (BuildContext context)=> HomePage(),
        'alert': (BuildContext context)=> AlertPage(),
        'avatar': (BuildContext context)=> AvatarPage(),

      },
    );
  }
}

