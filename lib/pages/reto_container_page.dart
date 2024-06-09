import 'package:flutter/material.dart';

class RetoContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RETOS CONTAINER"),
      ),
      body: Column(
        children: [
          IamHeaderWidget(),
          Helipuerto(),
        ],
      ),
    );
  }
}

class IamHeaderWidget extends StatelessWidget {
  const IamHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(25),
          bottomLeft: Radius.circular(25),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.blue,
            offset: Offset(5, 5),
            blurRadius: 10,
          ),
        ],
      ),
      alignment: Alignment.center,
      child: Text(
        "I am a header",
        style: TextStyle(
          fontSize: 35,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class Helipuerto extends StatelessWidget {
  const Helipuerto({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
