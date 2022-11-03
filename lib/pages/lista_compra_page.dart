import 'package:flutter/material.dart';

import '../models/Articulo.dart';


class ListaCompraPage extends StatefulWidget {
  const ListaCompraPage({Key? key}) : super(key: key);

  @override
  State<ListaCompraPage> createState() => _ListaCompraPageState();
}

class _ListaCompraPageState extends State<ListaCompraPage> {
  //Inicializamo una lista vacia
  List<Articulo> listaCompra = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lista de la compra')),
      //Builder -> recorre la lista y podemos devolver un widget por cada elemento
      body: ListView.builder(
        itemCount: listaCompra.length,
          itemBuilder: (BuildContext context, int index){
          // Compruebo si mi lista esta vacia
            if(listaCompra.isEmpty){
              return const Center(
                child: Text('Lista vacia, por favor añada articulos'),
              );
            }
            return ListTile(

              leading: const Icon(Icons.shopping_cart),
              title: Text('${listaCompra[index].nombre} - ${listaCompra[index].cantidad}'),
              subtitle: Text('Total: ${listaCompra[index].total} €'),
              trailing: GestureDetector(
                onLongPress: (){
                  //Borrar el elemento en la posicion index de la lista
                  setState(() {
                    listaCompra.removeAt(index);
                  });
                },
                child: const Icon(Icons.delete, color: Colors.red),
              ),
            );
          }
      ),
      floatingActionButton: FloatingActionButton(
        //Navegará a otra pagina donde introduciremos los datos del articulo
        // y se quedará a la espera de recibir ese articulo  y pintarlo en la lista
        child: Icon(Icons.add),
        onPressed: (){}
      )

    );
  }
}
