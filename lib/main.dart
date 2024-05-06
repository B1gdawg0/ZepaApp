import 'package:chat/post.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(ChatRoot());
}

class ChatRoot extends StatefulWidget{
  ChatRoot({super.key});
  @override
  State<ChatRoot> createState()=>_ChatRoot();
}


class _ChatRoot extends State<ChatRoot>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "zepa",
      initialRoute: ".",
      routes: {
        ".":(context) => AllPost()
      },
    );
  }
}