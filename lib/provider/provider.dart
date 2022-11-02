

import 'dart:convert';

import 'package:componentes/models/Characters.dart';
import 'package:http/http.dart';

class HttpService {
  //La url para llamar a la api
  // En una constante y guardarlo en otro archivo
  final String url = 'https://rickandmortyapi.com/api/character';

  //Traer un personaje en concreto enbase a su i
  // Future es un respuesta de algun tipo especifico por ejemplo
  // un String que va a ocurrir en un futuro
  // -> que va a ser un metodo asincrono

  Future<Character> getCharacter() async{
    //Http nos da un objeto response,
    // donde guardamos la respuesta de la api
    // aaceso a varias propiedad de la repuesta como es el statuscodee
    // o el body 
    // Esperar a esa respuesta del get que hemos lanzado
    // y una vez la tenga la guarda en res
    Response res = await get(Uri.parse(url + '/1'));
    //Pasos
    //1.Asegurar que la respuesta es correcta -> statuscode = 200
    if(res.statusCode == 200){
      return Character.fromJson(res.body);
    } else{
      //Ha ocurrido algun fallo -> 400, 404, 500
      throw Exception('Fallo');
    }
    
  }
  
  //Traernos una lista de personajes

 Future<List<Character>> getPersonajes() async{
    Response res = await get(Uri.parse(url));
    if(res.statusCode == 200){
      //1.pasamos el json a List<dinamyc> -> Me permite iterar ->for
      List<dynamic> lista = jsonDecode(res.body)['results'];
      //2.Puedo iterar para pasar cada elemento de la lista a tipo
      // Character
      List<Character> characters =
            lista.map((item) => Character.fromJson(item)).toList();
      return characters;
    }else{
      throw Exception('Fallo');
    }
 }




}