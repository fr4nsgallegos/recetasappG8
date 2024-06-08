import 'dart:io';

import 'package:flutter/material.dart';

class RecipePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("recipepage"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // ir hacia atras
                // Navigator.pop(context);

                //cerrar app
                exit(0);
              },
              child: Text("Atras"),
            ),
          ],
        ),
      ),
    );
  }
}
