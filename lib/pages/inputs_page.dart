import 'package:componentes/Inputs/emailInput.dart';
import 'package:componentes/Inputs/input_style.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  //Cuado llamemos a setState() se redibuje la pagina
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  //Variables => les doy un valor inicial
  String nombre = '';
  bool _ojo = true;
  TextEditingController _inputDateController =   TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Inputs'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical:10, horizontal: 20),
        children: [
          _nombreInput(),
          Text(nombre),
          const SizedBox(height: 20),
          EmailInput(),
          const SizedBox(height: 20),
           _passwordInput(),
          const SizedBox(height: 20),
          _datepickerInput(),
        ],
      )

    );
  }

 Widget _nombreInput() {
    return TextField(
      //Control de las mayusculas
      textCapitalization: TextCapitalization.sentences,
      //Estilos
      decoration: InputDecoration(
        //borde
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
        ),
        counterText: nombre.length.toString() + '/20',
        counterStyle: nombre.length >=20 ? TextStyle(color: Colors.red, fontSize: 14)
            : TextStyle(color: Colors.blue, fontSize: 14),
        hintText: 'Escriba su nombre',
        //La etiqueta para espeficar el nombre input
        label: Text('Nombre'),
        helperText: 'Unicamente el nombre',
        icon: Icon(Icons.account_box),
        //para cambiar el color y la forma del borde al hacer focus
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(width: 4, color: Colors.amber)
        ),
      ),
     onChanged:(value){
        //Guardar lo que tengamos en el input
       //Actualizar la vista
       setState(() {
         nombre = value;
       });
     } ,
    );
 }



  Widget _passwordInput() {

    return TextField(
      //Por defecto esta en text
      keyboardType: TextInputType.text,
      obscureText: _ojo,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20)
          ),
          hintText: 'Escribe una contraseña',
          label: Text('Password'),
          icon: Icon(Icons.password),
          suffixIcon: GestureDetector(
            onTap: (){
              setState(() {
                _ojo = !_ojo;
              });
            },
          child: Icon(Icons.remove_red_eye) ,
      )
      ),
    );
  }

  Widget _datepickerInput() {
    //Primero debemos crear el input
    return TextField(
      //TextEditingCotroller entre otras cosas nos permite
      // controlar el texto del input
      controller: _inputDateController,
      decoration: InputStyle().estiloInput(),
      //Debemos haer que muestre el calendario al tocar el input
      onTap:(){
        //Quitar el foco del input para que el calendario no desaparezca
        FocusScope.of(context).requestFocus(new FocusNode());
        //Metodo que se va encargar de pintar el calendario
        _selectDate();
      } ,
    );
  }

  void _selectDate() async {
    //Variable para guardar la fecha que seleccionemos
    //Una respuesta en el futuro?> Se queda esperando a tener un selccion
    //por lo tanto estamos hablando de que es una respuesta asincrona
    //Cuando llamamos a la apis -> await de la respuesta por lo tanto seran llamadas
    // async
    DateTime? fechaSeleccionada = await showDatePicker(
        context: context,
        //Fecha que queda preseleccionada por defecto al abrir el datepicker
        initialDate: new DateTime.now(),
        //La fecha minima del nuestro calendario
        firstDate: new DateTime(1920),
        //La ultima fecha que queremos que aparezca
        lastDate: new DateTime(2056),
        locale: Locale('es')
    );
    //Una vez reciba la respuesta continuara la ejecucion el metodo async
    if(fechaSeleccionada != null){
      setState(() {
        //Le decimos al controller que pinte la fecha parseada a String
        //Necesitamo una libreria intl que sirve entre cosas para el tema de
        // parseos o formateos de fechas
        _inputDateController.text = DateFormat('dd-MM-yyyy').format(fechaSeleccionada);
      });
    }
  }
}
