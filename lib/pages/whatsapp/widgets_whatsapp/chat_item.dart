import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 28,
        backgroundImage: NetworkImage(
            "https://www.wilsoncenter.org/sites/default/files/media/images/person/james-person-1.jpg"),
      ),
      title: Text(
        "Nombre de la person",
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(
        "Hola como estas?",
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
      ),
      trailing: Column(
        children: [
          Text("15:30"),
          Container(
            height: 25,
            width: 25,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.greenAccent,
            ),
            child: Center(
              child: Text(
                "1",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
