import 'package:flutter/material.dart';
import 'package:recetas_app_g8/pages/home_page.dart';
import 'package:recetas_app_g8/pages/list_view_page.dart';

void main() {
  runApp(
    MaterialApp(
      home: ListViewPage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
