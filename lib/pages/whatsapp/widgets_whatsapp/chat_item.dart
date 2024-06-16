import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(
        height: 56,
        width: 56,
        child: CachedNetworkImage(
          imageUrl:
              "https://www.wilsoncenter.org/sites/default/files/media/images/person/james-person-1.jpg",
          progressIndicatorBuilder: (context, url, progress) => Center(
            child: Container(
              height: 20,
              width: 20,
              child: CircularProgressIndicator(
                color: Colors.green,
                // strokeWidth: 10, //ancho de la barra de carga
                value: progress.progress,
              ),
            ),
          ),
          imageBuilder: (context, imageProvider) => CircleAvatar(
            backgroundImage: imageProvider,
            radius: 28,
          ),
        ),
      ),
      //  CircleAvatar(
      //   radius: 28,
      //   backgroundImage: NetworkImage(
      //       "https://www.wilsoncenter.org/sites/default/files/media/images/person/james-person-1.jpg"),
      // ),
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
