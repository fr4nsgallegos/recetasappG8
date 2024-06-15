import 'package:flutter/material.dart';
import 'package:recetas_app_g8/pages/calculator_page.dart';
import 'package:recetas_app_g8/pages/home_page.dart';
import 'package:recetas_app_g8/pages/list_view_page.dart';
import 'package:recetas_app_g8/pages/reto_container_page.dart';
import 'package:recetas_app_g8/pages/scroll_page.dart';
import 'package:recetas_app_g8/pages/textformfield_example_page.dart';

class ScreenModel {
  Widget pageName;
  String title;
  Color bgColor;
  Color colorButtonOption;
  Icon icono;
  ScreenModel({
    required this.pageName,
    required this.title,
    required this.bgColor,
    required this.colorButtonOption,
    required this.icono,
  });
}

List<ScreenModel> pagesDetails = [
  ScreenModel(
    pageName: HomePage(bgColor: Color(0xff264653)),
    title: "Home Page",
    bgColor: Color(0xff264653),
    colorButtonOption: Colors.white.withOpacity(0.3),
    icono: Icon(Icons.home),
  ),
  ScreenModel(
    pageName: ListViewPage(bgColor: Color(0xff2a9d8f)),
    title: "List View",
    bgColor: Color(0xff2a9d8f),
    colorButtonOption: Colors.white.withOpacity(0.3),
    icono: Icon(Icons.list),
  ),
  ScreenModel(
    pageName: ScrollPage(
      bgColor: Color(0xffe9c46a),
    ),
    title: "Scroll Page",
    bgColor: Color(0xffe9c46a),
    colorButtonOption: Colors.black.withOpacity(0.3),
    icono: Icon(Icons.arrow_circle_down_sharp),
  ),
  ScreenModel(
    pageName: CalculatorPage(bgColor: Color(0xff1F1F1F)),
    title: "Calculator View",
    bgColor: Color(0xff1F1F1F),
    colorButtonOption: Colors.white.withOpacity(0.5),
    icono: Icon(Icons.calculate),
  ),
  ScreenModel(
    pageName: RetoContainerPage(bgColor: Color(0xfff4a261)),
    title: "Reto Container View",
    bgColor: Color(0xfff4a261),
    colorButtonOption: Colors.white.withOpacity(0.3),
    icono: Icon(Icons.check_box_outline_blank_outlined),
  ),
  ScreenModel(
    pageName: TextFormFieldExamplePage(bgColor: Color(0xffe76f51)),
    title: "Text Form Field View",
    bgColor: Color(0xffe76f51),
    colorButtonOption: Colors.white.withOpacity(0.3),
    icono: Icon(Icons.format_align_center_outlined),
  ),
];
