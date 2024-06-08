import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  TextEditingController correoController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HOME PAGE"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              style: TextStyle(
                color: Colors.red,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              cursorColor: Colors.orange,
              controller: correoController,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(15),
                label: Text("LABEL"),
                labelStyle: TextStyle(color: Colors.pink, fontSize: 12),
                hintText: "Ingresa tu correo",
                hintStyle: TextStyle(color: Colors.cyan),
                filled: true,
                fillColor: Colors.green,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(25),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 4),
                    borderRadius: BorderRadius.circular(25)),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print(correoController.text);
              },
              child: Text("imprimir entrada de usuario"),
            )
          ],
        ),
      ),
    );
  }
}
