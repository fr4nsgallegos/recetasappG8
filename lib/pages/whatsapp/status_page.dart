import 'package:flutter/material.dart';
import 'package:recetas_app_g8/pages/whatsapp/widgets_whatsapp/status_item.dart';

class StatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Stack(
            clipBehavior: Clip.none,
            children: [
              CircleAvatar(
                radius: 22,
                backgroundImage: NetworkImage(
                    "https://www.wilsoncenter.org/sites/default/files/media/images/person/james-person-1.jpg"),
              ),
              Positioned(
                right: -5,
                bottom: -2,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green,
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.add,
                      size: 12,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
          title: Text(
            "My status",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          // subtitle: Text(
          //   "Hola como estas?",
          //   overflow: TextOverflow.ellipsis,
          //   maxLines: 1,
          // ),
        ),
        Container(
          color: Colors.grey.shade100,
          padding: EdgeInsets.all(16),
          child: Text(
            "Actualizaciones Recientes",
            style: TextStyle(
              fontSize: 20,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        StatusItem(),
        StatusItem(),
        StatusItem(),
        StatusItem(),
      ],
    );
  }
}
