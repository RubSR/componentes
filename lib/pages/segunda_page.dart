import 'package:flutter/material.dart';


class Page2 extends StatefulWidget {

  final String texto;

  const Page2({Key? key, this.texto = '' }) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {

  TextEditingController textEditingController =  TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda pagina'),
      ),
      body: Center(
        child: Column(
          children: [

            Text(widget.texto),
            Padding(padding: EdgeInsets.all(32),
            child: TextField(
              controller: textEditingController,
            ),
            ),
            ElevatedButton(onPressed: (){ _delvolverDatos();}, child: Text('Devolver'))
          ],
        ),
      ),
    );
  }

  void _delvolverDatos() {
    String text = textEditingController.text;
    Navigator.pop(context,text);
  }
}
