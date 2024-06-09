import 'package:flutter/material.dart';
import 'package:recetas_app_g8/pages/home_page.dart';
import 'package:recetas_app_g8/pages/list_view_page.dart';
import 'package:recetas_app_g8/pages/scroll_page.dart';
import 'package:recetas_app_g8/pages/textformfield_example_page.dart';

void main() {
  runApp(
    MaterialApp(
      home: TextFormFieldExamplePage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
