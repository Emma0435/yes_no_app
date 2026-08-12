import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

//ChangeNotifier puede notificar cuando hay cambios
//Cuando notifica cambios, podemos redibujar alguna cosa
class ChatProvider extends ChangeNotifier {
  List<Message> message = [
    Message(text: 'Hola amor', fromWho: FromWho.me),
    Message(text: 'Ya regresaste?', fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String text) async {
    //ToDo: implementar método
  }
}
