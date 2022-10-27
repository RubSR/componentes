import 'package:flutter/material.dart';

class InputStyle{


  InputDecoration estiloInput(){
   return InputDecoration(
       border: OutlineInputBorder(
           borderRadius: BorderRadius.circular(20)
       ),
       hintText: 'Ecoja su fecha de nacimiento',
       label: Text('Fecha'),
       icon: Icon(Icons.date_range)
   );
}
}