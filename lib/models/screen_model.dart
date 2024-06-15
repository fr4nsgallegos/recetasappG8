import 'package:flutter/material.dart';
import 'package:recetas_app_g8/pages/home_page.dart';
import 'package:recetas_app_g8/pages/list_view_page.dart';

class ScreenModel {
  Widget pageName;
  String title;
  Color bgColor;
  Color colorButtonOption;

  ScreenModel(
      {required this.pageName,
      required this.title,
      required this.bgColor,
      required this.colorButtonOption});
}

List<ScreenModel> pagesDetails = [
  ScreenModel(
    pageName: HomePage(bgColor: Color(0xff264653)),
    title: "Home Page",
    bgColor: Color(0xff264653),
    colorButtonOption: Color(0xff264653).withOpacity(0.5),
  ),
  ScreenModel(
      pageName: ListViewPage(bgColor: Color(0xff2a9d8f)),
      title: "List View",
      bgColor: Color(0xff2a9d8f),
      colorButtonOption: Color(0xff2a9d8f).withOpacity(0.5)),
];
