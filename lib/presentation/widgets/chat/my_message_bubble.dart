import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget {
  const MyMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    //Significa: busca este tema dentro de este contexto
    //Es decir, buscará el color que estemos utilizando, ese es el contexto
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            //Es el color primario que el tema me dé (del contexto, es decir el main)
            color: colors.primary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Reprehenderit cupidatat proident.',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),

        //Le damos espacio entre cada burbuja
        SizedBox(height: 5),
      ],
    );
  }
}
