import 'package:flutter/material.dart';

class StatusItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.grey,
                width: 3,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 3,
                ),
              ),
              child: CircleAvatar(
                radius: 22,
                backgroundImage: NetworkImage(
                    "https://img.freepik.com/foto-gratis/avion-volando-cielo-nublado_144627-132.jpg?w=1060&t=st=1718547903~exp=1718548503~hmac=6b5e39e7f4046d5487397a6a502d40f51959ecda0a4dcbdc449fe4a3806f2228"),
              ),
            ),
          ),
        ],
      ),
      title: Text(
        "Carlos",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        "Ayer, 16:27",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.grey,
        ),
      ),
    );
  }
}
