import 'package:flutter/material.dart';
import 'package:recetas_app_g8/models/recipe_model.dart';
import 'package:recetas_app_g8/pages/recipe_page.dart';

class RecipeItem extends StatelessWidget {
  RecipeModel recipe;
  RecipeItem(this.recipe);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RecipePage(),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 24),
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
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                recipe.urlImage,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              recipe.titulo,
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            Text(
              recipe.descripcion,
              style: TextStyle(color: Colors.white),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }
}
