import 'package:exam/AppBarPage.dart';
import 'package:exam/chatPage.dart';
import 'package:flutter/material.dart';

main(){
  runApp(Whatsapp());
}

class Whatsapp extends StatelessWidget {
  const Whatsapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.black,
        ),
        useMaterial3: true,
      ),
      home :AppBarPage()
    );
  }
}