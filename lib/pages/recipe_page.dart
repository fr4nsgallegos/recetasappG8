import 'dart:io';

import 'package:flutter/material.dart';
import 'package:recetas_app_g8/constants/constants.dart';
import 'package:recetas_app_g8/models/recipe_model.dart';

class RecipePage extends StatelessWidget {
  RecipeModel recipeModel;
  RecipePage({required this.recipeModel});

  int x = 1;
  String variable = "hola mundo aqui estoy";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff29304B),
      appBar: AppBar(
        title: Text(
          recipeModel.titulo,
          style: tituloStyle,
        ),
        centerTitle: true,
        backgroundColor: Color(0xff29304B),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                recipeModel.urlImage,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            BuildDetalleRecipe("Descripción", recipeModel.descripcion),
            BuildDetalleRecipe("Ingredientes", recipeModel.ingredientes),
            BuildDetalleRecipe("Preparación", recipeModel.preparacion),
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

class BuildDetalleRecipe extends StatelessWidget {
  String titulo;
  String detalle;

  BuildDetalleRecipe(this.titulo, this.detalle);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titulo,
          style: tituloStyle,
        ),
        Container(
          padding: EdgeInsets.all(16),
          child: Text(
            detalle,
            style: descripcionStyle,
          ),
        ),
      ],
    );
  }
}
