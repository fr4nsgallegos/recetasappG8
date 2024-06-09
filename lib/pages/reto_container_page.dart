import 'package:flutter/material.dart';

class RetoContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RETOS CONTAINER"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.orange,
                width: 4,
              ),
            ),
            alignment: Alignment.center,
            child: Text(
              "H",
              style: TextStyle(
                fontSize: 200,
                color: Colors.orange,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
