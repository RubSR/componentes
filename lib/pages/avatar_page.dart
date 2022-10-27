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
      body: const  Center(
        //Hace una animacion de fundido y ademas nos deja poner un widget de tipo placeholer
        child: FadeInImage(
          image: NetworkImage('https://i.blogs.es/dac973/saitama/1024_2000.webp'),
          fadeInDuration: Duration(seconds: 2),
          fadeInCurve: Curves.fastLinearToSlowEaseIn,
          placeholder: AssetImage('assets/carga.gif'),

        ),
      ),
    );
  }
}
