import 'package:flutter/material.dart';
import 'package:recetas_app_g8/widgets/container_aux.dart';

class ListViewPage extends StatelessWidget {
  Color bgColor;
  ListViewPage({required this.bgColor});
  List<String> names = ["asd", "asdad", "asdasd", "!#wqdasda"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      // appBar: AppBar(
      //   title: Text("LIST"),
      // ),
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
