import 'package:flutter/material.dart';
import 'package:recetas_app_g8/widgets/container_aux.dart';

class ScrollPage extends StatelessWidget {
  Color bgColor;
  ScrollPage({required this.bgColor});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      // appBar: AppBar(
      //   title: Text("Scroll Page"),
      // ),
      body:
          // ListView.builder(
          //   itemCount: 20,
          //   itemBuilder: (BuildContext context, int index) {
          //     return ContainerAux();
          //   },
          // ),
          SingleChildScrollView(
        child: Column(
          children: [
            Text("CABECERA1"),
            SizedBox(
              height: 200,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return ContainerAux();
                },
              ),
            ),
            ContainerAux(),
            ContainerAux(),
            ...List.generate(
              5,
              (index) => Padding(
                padding: EdgeInsets.all(16),
                child: Text("HIJO"),
              ),
            ),
            ContainerAux(),
            ContainerAux(),
            SizedBox(
                height: 200,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return ContainerAux();
                    },
                    separatorBuilder: (context, index) {
                      return Container(
                        width: 20,
                        height: 20,
                        color: Colors.black,
                      );
                    },
                    itemCount: 20)),
            ContainerAux(),
            ContainerAux(),
            ContainerAux(),
            ContainerAux(),
            ContainerAux(),
            ContainerAux(),
          ],
        ),
      ),
    );
  }
}
