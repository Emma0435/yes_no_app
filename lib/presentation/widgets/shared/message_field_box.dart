import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  MessageFieldBox({super.key});

  //Variable que guarda lo escrito en la caja de texto
  final textController = TextEditingController();
  final focusNode =
      FocusNode(); //Indicamos cuando un elemento (de texto) necesita un foco/atención

  @override
  Widget build(BuildContext context) {
    //Creamos 2 variables de decoración para en el cuerpo de la caja
    //de texto unicamente llamar una varible y no un widget compelto

    final outlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(40),
    );

    final inputDecoration = InputDecoration(
      hintText: 'End your message with a "?"',
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      filled: true,
      suffixIcon: IconButton(
        onPressed: () {
          final textValue = textController.value.text;
          print('El texto fue: $textValue');
          textController.clear();
        },
        icon: Icon(Icons.send_outlined),
      ),
    );

    return TextFormField(
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,

      //Cuando toquemos fuera de la caja de texto, se quitará el teclado
      onTapOutside: (event) {
        focusNode.unfocus();
      },

      //Significa cuando de enter o done, "envie el mensaje"
      onFieldSubmitted: (value) {
        print('Submit value: $value');
        textController.clear();
        focusNode.requestFocus();
        //Evita que cuando demos al enter/done, se cierre el teclado. es decir, que ahi siga el foco
      },
    );
  }
}
