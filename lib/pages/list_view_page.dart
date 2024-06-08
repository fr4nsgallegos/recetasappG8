import 'package:flutter/material.dart';
import 'package:recetas_app_g8/widgets/container_aux.dart';

class ListViewPage extends StatelessWidget {
  List<String> names = ["asd", "asdad", "asdasd", "!#wqdasda"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LIST"),
      ),
      body: Column(
        children: [
          Text("Hola esta es mi lista"),
          Expanded(
            child: ListView.builder(
              itemCount: 100,
              itemBuilder: (BuildContext context, int index) {
                print(index);
                return ContainerAux();
              },
            ),
          ),
          Container(
            height: 200,
            width: 300,
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
