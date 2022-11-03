import 'package:componentes/pages/segunda_page.dart';
import 'package:flutter/material.dart';


class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {

  TextEditingController textEditingController = TextEditingController();
  String text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina padre'),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(32),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(fontSize: 20,  color: Colors.black),
              ),
            ),

            ElevatedButton(
                onPressed: (){ _enviarDatos(); },
                child: const Text('Enviar')),

            ElevatedButton(
                onPressed: (){ _recibirDatos(); },
                child: const Text('Recibir')),

            Text(text)
          ],
        ),
      ),
    );
  }

  _enviarDatos() {

    String textToSend = textEditingController.text ;
    //Logica para enviar el texto---> falta primero crearnos un segunda pagina
    Navigator.push(context, MaterialPageRoute(builder: (context)=> Page2(texto: textToSend) ));
  }

  void _recibirDatos() async {
     final  resultado = await Navigator.push(context ,
         MaterialPageRoute(builder: (context)=> Page2(texto: textEditingController.text)));

     setState(() {
       text = resultado;
     });
  }
}
