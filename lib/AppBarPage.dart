
import 'package:exam/chatPage.dart';
import 'package:flutter/material.dart';

class AppBarPage extends StatelessWidget {
  AppBarPage({super.key});
  List<Map<String, dynamic>> chat = [
    {
      "title": "Basith",
      "subtitle": "Hello how r you",
      "image": "assets/images/menicon.png",
      "time": "02:21 pm",
    },
    {
      "title": "Jobin",
      "subtitle": "Hello where are you",
      "image": "assets/images/java.png",
      "time": "02:40 pm",
    },
    {
      "title": "Sutheesh",
      "subtitle": "Hello",
      "image": "assets/images/html.png",
      "time": "12:11 pm",
    },
    {
      "title": "Tinto",
      "subtitle": "Hello how r you",
      "image": "assets/images/dart.png",
      "time": "09:01 am",
    },
    {
      "title": "Gokul",
      "subtitle": "You have a message",
      "image": "assets/images/js.png",
      "time": "12:05 pm",
    },
    {
      "title": "Lakshmi",
      "subtitle": "R u free now :)",
      "image": "assets/images/w.webp",
      "time": "02:22 pm",
    },
    {
      "title": "John",
      "subtitle": "Get lost",
      "image": "assets/images/js.png",
      "time": "08:58 pm",
    },
    {
      "title": "Abraham",
      "subtitle": "catch you later :)",
      "image": "assets/images/menicon.png",
      "time": "02:01 pm",
    },
    {
      "title": "Gokul C",
      "subtitle": "Come fast mr",
      "image": "assets/images/html.png",
      "time": "12:01 pm",
    },
    {
      "title": "Raju",
      "subtitle": "Where are you",
      "image": "assets/images/java.png",
      "time": "11:21 pm",
    },
    {
      "title": "Gokul C",
      "subtitle": "Come fast mr",
      "image": "assets/images/html.png",
      "time": "12:01 pm",
    },
    {
      "title": "Raju",
      "subtitle": "Where are you",
      "image": "assets/images/java.png",
      "time": "11:21 pm",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Whatsapp",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            iconSize: 27,
            color: Colors.white,
            onPressed: () {},
            icon: const Icon(
              Icons.qr_code_scanner_outlined,
            ),
          ),
          IconButton(
            iconSize: 27,
            color: Colors.white,
            onPressed: () {},
            icon: const Icon(
              Icons.camera_alt_outlined,
            ),
          ),
          IconButton(
            iconSize: 27,
            color: Colors.white,
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert_rounded,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: chat.length,
            itemBuilder: (ctx, index) => InkWell(
              onDoubleTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Chatpages(
                      name: chat[index]['title'],
                      image: chat[index]['image'],
                      chat: chat[index]['subtitle'],            
                    ),
                  ),
                );
              },
              child: ListTile(
                    onTap: () {},
                    textColor: Colors.white,
                    tileColor: Colors.black,
                    title: Text(chat[index]["title"]),
                    subtitle: Text(chat[index]["subtitle"]),
                    trailing: Text(chat[index]["time"]),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(chat[index]["image"]),
                    ),
                  ),
            ),
            
            ),
      ),
    );
  }
}