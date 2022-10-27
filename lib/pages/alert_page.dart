import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alertas'),
      ),
      body: Center(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                shape: const StadiumBorder()),
            onPressed: () {
              //Al presionar deberia mostrar una alerta
              //showdialog()
              _mostrarAlerta(context);
            },
            child: const Text('Mostrar alerta')),
      ),
    );
  }

  _mostrarAlerta(BuildContext context) {
    showDialog(
        //Para hacer que el usuario no pueda cerrar el Alert tocando fuera
        barrierDismissible: false,
        context: context,
        builder: (context) {
          //Es un iphone
          if (Platform.isAndroid) {
            return CupertinoAlertDialog(
              title: Text('Titulo del alert'),
              content: Column(
                //El column si no le decimos nada coge toda la altura
                // de su widget contenedor
                mainAxisSize: MainAxisSize.min,
                children: [Text('Contenido del alert'), FlutterLogo(size: 100)],
              ),
              actions: [
                TextButton(
                    //Navigator.pop() => para volver a atras en la pila de navegacion
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text('Cancelar')),
                TextButton(
                    //Navigator.pop() => para volver a atras en la pila de navegacion
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text('Aceptar')),
              ],
            );
          }
          return AlertDialog(
            actionsAlignment: MainAxisAlignment.spaceAround,
            title: Text('Titulo del alert'),
            content: Column(
              //El column si no le decimos nada coge toda la altura
              // de su widget contenedor
              mainAxisSize: MainAxisSize.min,
              children: [Text('Contenido del alert'), FlutterLogo(size: 100)],
            ),
            actions: [
              TextButton(
                  //Navigator.pop() => para volver a atras en la pila de navegacion
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('Cancelar')),
              TextButton(
                  //Navigator.pop() => para volver a atras en la pila de navegacion
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('Aceptar')),
            ],
          );
        });
  }
}
