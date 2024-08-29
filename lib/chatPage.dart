import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chatpages extends StatefulWidget {
  String name, image, chat;
  Chatpages({
    required this.name,
    required this.image,
    required this.chat,
  });

  @override
  State<Chatpages> createState() => _ChatpagesState();
}

class _ChatpagesState extends State<Chatpages> {String temp="";
  final _value = TextEditingController();
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
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              ListTile(
                textColor: Colors.white,
                tileColor: Colors.black,
                title: Text(widget.name),
                leading: CircleAvatar(
                  backgroundImage: AssetImage(widget.image),
                ),
                trailing: IconButton(
                  iconSize: 27,
                  color: Colors.white,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.video_call,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                // margin: EdgeInsets.only(top: 450, left: 10),
                child: ListTile(
                  title: Text(
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    widget.chat,
                  ),
                ),
                
              ),
              Container(
                margin: EdgeInsets.only(left: 230),
                child: Text(
                  
                  style: TextStyle(color: Colors.blue,fontSize: 18),
                  "${temp}\t"),
              ),
              const SizedBox(
                height: 13,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 400, left: 10),
                    width: 260,
                    // margin: EdgeInsets.only(left: 30),
                    child: TextFormField(
                      controller: _value,
                      style: TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                        label: Text("Message"),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  
                  Container(
                    margin: EdgeInsets.only(top: 400, left: 10),
                    child: IconButton(
                      icon: Icon(Icons.send),
                      color: Colors.green,
                      iconSize: 30,
                      onPressed: () {
                        setState(() {
                          temp+=_value.text;
                        });
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 400, left: 10),
                    child: IconButton(
                      icon: Icon(Icons.mic),
                      color: Colors.green,
                      iconSize: 30,
                      onPressed: () {},
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
