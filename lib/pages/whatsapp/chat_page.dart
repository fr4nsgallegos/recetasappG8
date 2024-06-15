import 'package:flutter/material.dart';
import 'package:recetas_app_g8/pages/whatsapp/widgets_whatsapp/chat_item.dart';

class ChatPage extends StatefulWidget {
  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ChatItem(),
        ChatItem(),
        ChatItem(),
        ChatItem(),
        ChatItem(),
        ChatItem(),
      ],
    );
  }
}
