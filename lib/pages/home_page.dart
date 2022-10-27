//1. Importar material
import 'package:flutter/material.dart';
//2. Crear la pagina de tipo: stless o stfull

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> componentes = [
      {
        'title': 'Alertas',
        'icon': const Icon(Icons.message_outlined),
        'ruta': 'alert'
      },
      {
        'title': 'Avatares',
        'icon': const Icon(Icons.account_circle_outlined),
        'ruta': 'avatar'
      },
      {
        'title': 'Cards',
        'icon': const Icon(Icons.format_align_justify_rounded),
        'ruta': 'card'
      },
      {
        'title': 'Inputs',
        'icon': const Icon(Icons.account_box),
        'ruta': 'inputs'
      }
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes'),
      ),
      body: ListView.builder(
          //Necesita saber el tamaño de la lista
          itemCount: componentes.length,
          //context hace referencia al stateful o stateless widget / al widget padre
          // donde se esta pintando
          itemBuilder: (BuildContext context, int index) {
            //El card es simplemente para ponerle bordes al ListTile
            return Card(
              margin: EdgeInsets.all(7),
              child: ListTile(
                onTap: () {
                  //Navegacion entre pantallas
                  Navigator.pushNamed(context, componentes[index]['ruta']);
                },
                title: Text(componentes[index]['title']),
                leading: componentes[index]['icon'],
                trailing: const Icon(Icons.keyboard_arrow_right_rounded),
              ),
            );
          }),
    );
  }
}
