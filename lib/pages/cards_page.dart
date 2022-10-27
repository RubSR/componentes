import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _cardTipo1(),
            _cardTipo2(),
            _cardTipo1(),
          ],
        ),
      ),
    );
  }

  Card _cardTipo1() {
    return Card(
      margin: EdgeInsets.all(20),
      child:  Column(
        children: [
          ListTile(
            leading: FlutterLogo(),
            title: Text('Titulo del card'),
            subtitle: Text('Subtitulo del card'),
          ),
          TextField(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: () {}, child: Text('Cancelar')),
              TextButton(onPressed: () {}, child: Text('Aceptar')),
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    return Card(
      color: Colors.amber,
      shadowColor: Color.fromARGB(255, 138, 106, 8),
      clipBehavior: Clip.antiAlias,
      //Cambiar el grosor del borde como el radio
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 20,
      margin: EdgeInsets.only(right: 20, left: 20, top: 20, bottom: 20),
      child: Column(
        children: [
          Image(
              image: NetworkImage(
                  'https://www.drakonball.com/wp-content/uploads/2022/04/el-edificio-de-saitama-en-la-vida-real.jpg')),
          ListTile(
            leading: FlutterLogo(),
            title: Text('Titulo del card'),
            subtitle: Text('Subtitulo del card'),
          ),
          Text('Contenido de la notica'),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: () {}, child: Text('Cancelar')),
              TextButton(onPressed: () {}, child: Text('Aceptar')),
            ],
          )
        ],
      ),
    );
  }
}
