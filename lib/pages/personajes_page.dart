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
            List<Character> chars = snapshot.data!;
            //Iterar esa lista y pintar un card por cada elemento
            return ListView(
              children: chars.map((Character char) =>
              Card(
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    Image(image: NetworkImage(char.image ?? ''),
                      //double.infinity es todo los que pueda dentro del contenedor
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    ListTile(
                      title: Text(char.name!),
                      subtitle: Text(char.location!.name!),
                    )
                  ],
                ),
              )
              ).toList(),
            ) ;
          }
          //Devolver un spinner o circular progress indicator
          return  const Center(
            child: CircularProgressIndicator() ,
          );
        },
      )
    );
  }
}
