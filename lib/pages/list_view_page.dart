import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  Widget construirContainer() {
    return Container(
      margin: EdgeInsets.all(16),
      height: 200,
      width: 300,
      color: Colors.red,
    );
  }

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
                return construirContainer();
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
