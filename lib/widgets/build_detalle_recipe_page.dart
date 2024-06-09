import 'package:flutter/material.dart';
import 'package:recetas_app_g8/constants/constants.dart';

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
