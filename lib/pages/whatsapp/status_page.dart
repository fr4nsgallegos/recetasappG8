import 'package:flutter/material.dart';

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
                child: Container(
                  decoration: BoxDecoration(shape: BoxShape.circle),
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
      ],
    );
  }
}
