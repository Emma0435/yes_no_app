import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT41-t84_Pqbp5W6lBIyLcV85KBbLSAjf3M7POJ1zOO-yXM5HLBcSWHe3Iw&s=10',
            ),
          ),
        ),
        title: Text('Emma Stone'),
        // centerTitle: true, //Linea para centrar o a la izquierda el título
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      //Widget que evita que tome espacio de los botones de acción
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              //Listview es para crear un listado de widgets, lo limitamos a 100
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return const MyMessageBubble();
                },
              ),
            ),

            Text('Mundo'),
          ],
        ),
      ),
    );
  }
}
