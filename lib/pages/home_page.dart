import 'package:flutter/material.dart';
import 'package:recetas_app_g8/widgets/form_item.dart';

class HomePage extends StatelessWidget {
  TextEditingController titleController = new TextEditingController();
  TextEditingController decripcionController = new TextEditingController();
  TextEditingController urlImageController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff29304B),
      appBar: AppBar(
        title: Text("Mis recetas"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FormItem(
              controlador: titleController,
              hint: "Ingresa el nombre del platillo",
              icono: Icons.title,
            ),
            FormItem(
              controlador: decripcionController,
              hint: "Ingresa la descripción",
              icono: Icons.description,
            ),
            FormItem(
              controlador: urlImageController,
              hint: "Ingresa la url de la imagen",
              icono: Icons.image,
            ),

            Text(
              "Listado General",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),

            Container(
              padding: EdgeInsets.all(16),
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                color: Color(0xff29304B).withOpacity(0.9),
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(5, 5),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Column(
                children: [
                  // Container(
                  //     height: 200,
                  //     decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(16),
                  //       image: DecorationImage(
                  //         fit: BoxFit.cover,
                  //         image: NetworkImage(
                  //             "https://www.solopostres.com/wp-content/uploads/2016/04/receta198.jpg"),
                  //       ),
                  //     ))
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.network(
                      "https://www.solopostres.com/wp-content/uploads/2016/04/receta198.jpg",
                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    "Wafles",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  Text(
                    "Los waffles son originarios de Bélgica, y también son llamados “Gofre” (palabra proveniente del francés). Su preparación no es complicada en absoluto y son muy apropiados para ser usados como base para otros postres. Las combinaciones con helados, cremas o frutas son ideales para saborear esta delicia culinaria.",
                    style: TextStyle(color: Colors.white),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     // print(correoController.text);
            //   },
            //   child: Text("imprimir entrada de usuario"),
            // )
          ],
        ),
      ),
    );
  }
}
