import 'package:componentes/provider/provider.dart';
import '../models/Characters.dart';

import 'package:flutter/material.dart';

class PersonajesPage extends StatelessWidget {
   PersonajesPage({Key? key}) : super(key: key);
  final HttpService http = HttpService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Personajes'),
      ),
      body:FutureBuilder(
        //Es donde vamos a recibir los datos de tipo Future
        future: http.getPersonajes() ,
        builder: (BuildContext context,
            AsyncSnapshot<List<Character>> snapshot){
          //1. Comprobar si ya tenemos los datos o no
          if(snapshot.hasData){
            //Pintar la lista de personajes
            return Text('Ya tengo datos');
          }
          //Devolver un spinner o circular progress indicator
          return Text('Aun no tengo datos', style: TextStyle(fontSize: 50), );
        },
      )
    );
  }
}
