import 'package:flutter/material.dart';
import 'package:recetas_app_g8/models/recipe_model.dart';
import 'package:recetas_app_g8/widgets/form_item.dart';
import 'package:recetas_app_g8/widgets/recipe_item.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController titleController = new TextEditingController();
  TextEditingController descripcionController = new TextEditingController();
  TextEditingController ingredientesController = new TextEditingController();
  TextEditingController preparacionController = new TextEditingController();
  TextEditingController urlImageController = new TextEditingController();

  RecipeModel recipeAux = RecipeModel(
      titulo: "Wafles",
      descripcion:
          "Los waffles son originarios de Bélgica, y también son llamados “Gofre” (palabra proveniente del francés). Su preparación no es complicada en absoluto y son muy apropiados para ser usados como base para otros postres. Las combinaciones con helados, cremas o frutas son ideales para saborear esta delicia culinaria.",
      ingredientes:
          "2 huevos,1 y 1/2 taza de leche (375cc.),100 gramos de manteca derretida ( mantequilla ),2 tazas de harina común (240 gramos),3 cucharaditas de polvo de hornear,1/2 cucharadita de sal",
      preparacion:
          "Generalmente las planchas de waffles no necesitan ser enmantecadas porque la manteca que contiene la masa ya es suficiente para que no se peguen. Calentar el molde para gofres o si es automático esperar a que esté a la temperatura adecuada.",
      urlImage:
          "https://www.solopostres.com/wp-content/uploads/2016/04/receta198.jpg");

  List<RecipeModel> recipesList = [];

  @override
  void initState() {
    recipesList.add(recipeAux);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff29304B),
      appBar: AppBar(
        title: Text("Mis recetas"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FormItem(
                controlador: titleController,
                hint: "Ingresa el nombre del platillo",
                icono: Icons.title,
              ),
              FormItem(
                controlador: descripcionController,
                hint: "Ingresa la descripción",
                icono: Icons.description,
              ),
              FormItem(
                controlador: ingredientesController,
                hint: "Ingresa los ingredientes",
                icono: Icons.list,
              ),
              FormItem(
                controlador: preparacionController,
                hint: "Ingresa la preparación",
                icono: Icons.sync,
              ),
              FormItem(
                controlador: urlImageController,
                hint: "Ingresa la url de la imagen",
                icono: Icons.image,
              ),
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                    RecipeModel recipeTemp = RecipeModel(
                      titulo: titleController.text,
                      descripcion: descripcionController.text,
                      ingredientes: ingredientesController.text,
                      preparacion: preparacionController.text,
                      urlImage: urlImageController.text,
                    );

                    recipesList.add(recipeTemp);
                    setState(() {});
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  child: Text(
                    "Agregar",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Divider(
                height: 40,
                thickness: 3,
                color: Colors.white.withOpacity(0.5),
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
                height: 400,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: recipesList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return RecipeItem(
                      recipesList[index],
                    );
                  },
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
      ),
    );
  }
}
