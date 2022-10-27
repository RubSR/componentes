import 'package:flutter/material.dart';


class EmailInput extends StatefulWidget {
  const EmailInput({Key? key}) : super(key: key);

  @override
  State<EmailInput> createState() => _EmailInputState();
}

class _EmailInputState extends State<EmailInput> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20)
          ),
          hintText: 'Escribe tu email',
          label: Text('Email'),
          icon: Icon(Icons.email)
      ),
    );;
  }
}
