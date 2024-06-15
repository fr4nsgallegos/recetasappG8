import 'package:flutter/material.dart';
import 'package:recetas_app_g8/pages/calculator_page.dart';
import 'package:recetas_app_g8/pages/home_page.dart';
import 'package:recetas_app_g8/pages/list_view_page.dart';
import 'package:recetas_app_g8/pages/reto_container_page.dart';
import 'package:recetas_app_g8/pages/scroll_page.dart';
import 'package:recetas_app_g8/pages/navigator_curve_page.dart';
import 'package:recetas_app_g8/pages/tab_bar_page.dart';
import 'package:recetas_app_g8/pages/textformfield_example_page.dart';
import 'package:recetas_app_g8/pages/whatsapp/home_whatsApp.dart';

void main() {
  runApp(
    MaterialApp(
      // home:NavigatorCurvePage(),
      home: HomeWhatsApp(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Color(0xff103A27),
          elevation: 5,
        ),
      ),
    ),
  );
}
