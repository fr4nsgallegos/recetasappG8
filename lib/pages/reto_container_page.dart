import 'package:flutter/material.dart';

class RetoContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RETOS CONTAINER"),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.red, Colors.blue],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                IamHeaderWidget(),
                Helipuerto(),
                ContainersChallenge(),
                GradienteContainer(),
                GradienteContainer(),
                GradienteContainer(),
                GradienteContainer(),
                GradienteContainer(),
                GradienteContainer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class GradienteContainer extends StatelessWidget {
  const GradienteContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 350,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(40),
        gradient: LinearGradient(
          colors: [
            Color(0xff7ef29d),
            Color(0xff0b3866),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [
            0.1,
            0.8,
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            offset: Offset(-10, 10),
            blurRadius: 10,
          )
        ],
      ),
      alignment: Alignment.center,
      child: Text(
        "Challenge",
        style: TextStyle(
          color: Colors.white,
          fontSize: 45,
        ),
      ),
    );
  }
}

class ContainersChallenge extends StatelessWidget {
  const ContainersChallenge({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: 300,
        height: 100,
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.blue,
        ),
        child: Container(
          height: 100,
          width: 220,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color(0xff93CCF9),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              bottomLeft: Radius.circular(50),
            ),
          ),
          child: Text(
            "Challenge",
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
            ),
          ),
        ),
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
