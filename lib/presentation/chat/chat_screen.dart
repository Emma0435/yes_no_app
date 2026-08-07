import 'package:flutter/material.dart';

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
    );
  }
}
