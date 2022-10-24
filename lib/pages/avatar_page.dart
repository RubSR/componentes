import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatares'),
        actions: [
          Container(
            padding: EdgeInsets.all(5),
            child:  const CircleAvatar(
              backgroundImage: NetworkImage('https://www.drakonball.com/wp-content/uploads/2022/04/el-edificio-de-saitama-en-la-vida-real.jpg'),
            ),

          ),
          Container(
            padding: EdgeInsets.all(5),
            child: GestureDetector(
              onTap: (){
                //Abrir el menu de configuracion de mi cuenta
              },
              child: const  CircleAvatar(
                backgroundColor: Colors.deepPurpleAccent,
                child: Text('RS'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
