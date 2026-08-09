import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    //Creamos 2 variables de decoración para en el cuerpo de la caja
    //de texto unicamente llamar una varible y no un widget compelto

    final outlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(40),
    );

    final inputDecoration = InputDecoration(
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      filled: true,
      suffixIcon: IconButton(
        onPressed: () {
          print('El texto fue:');
        },
        icon: Icon(Icons.send_outlined),
      ),
    );

    return TextFormField(
      decoration: inputDecoration,
      onChanged: (value) {
        print('El valor es: $value');
      },
    );
  }
}
