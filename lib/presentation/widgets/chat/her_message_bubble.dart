import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    //Significa: busca este tema dentro de este contexto
    //Es decir, buscará el color que estemos utilizando, ese es el contexto
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            //Es el color primario que el tema me dé (del contexto, es decir el main)
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Sint quis et officia id aliquip ut aute pariatur aute pariatur. Reprehenderit adipisicing sit consectetur esse officia. Eiusmod irure elit qui elit occaecat minim mollit incididunt. Magna irure exercitation consequat sunt duis consectetur laborum do cillum cupidatat ad et occaecat. Consectetur velit incididunt est laboris. Irure enim occaecat labore ea cupidatat minim velit ad laborum elit nisi veniam ex culpa.',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),

        //Le damos espacio entre cada burbuja
        const SizedBox(height: 5),

        _ImageBubble(),
        SizedBox(height: 10),

        //ToDo: Imagen
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //MediaQuery nos da información referente al dispositivo ejecutando
    //Obtenemos el tamaño del dispositivo que usamos
    final size = MediaQuery.of(context).size;
    // print(size);
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(20),
      child: Image.network(
        'https://yesno.wtf/assets/yes/13-c3082a998e7758be8e582276f35d1336.gif',
        width: size.width * 0.7,
        height:
            150, //Dejamos altura definida para que siempre sean de un mismo tamaño
        fit: BoxFit
            .cover, //Le decimos que se ajuste al tamaño que yo le estoy dando
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;

          return Container(
            width: size.width * 0.7,
            height: 150,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: const Text('Emma Stone esta mandando una imagen'),
          );
        },
      ),
    );
  }
}
