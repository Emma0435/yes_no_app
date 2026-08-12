import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/config/theme/app_theme.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';
import 'package:yes_no_app/presentation/screens/chat/chat_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //Aqui creamos nuestro chatprovider a un nivel global de la aplicación
    //Porque el main es el punto más alto, entonces los archivos de abajo lo heredan
    return MultiProvider(
      //Con el _ como argumento, decimos "No importa este argumento"
      providers: [ChangeNotifierProvider(create: (_) => ChatProvider())],
      child: MaterialApp(
        title: 'Yes No App',
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColor: 1).theme(),
        home: const ChatScreen(),
      ),
    );
  }
}
