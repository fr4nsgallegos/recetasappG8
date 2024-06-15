import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:recetas_app_g8/pages/calculator_page.dart';
import 'package:recetas_app_g8/pages/home_page.dart';
import 'package:recetas_app_g8/pages/list_view_page.dart';
import 'package:recetas_app_g8/pages/scroll_page.dart';

class TabBarPage extends StatelessWidget {
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        bottomNavigationBar: CurvedNavigationBar(
          items: [
            Icon(
              Icons.home,
              color: Colors.red,
            ),
            Icon(Icons.food_bank_outlined),
            Icon(Icons.person),
          ],
          onTap: (index) {
            pageController.animateToPage(index,
                duration: Duration(milliseconds: 300),
                curve: Curves.bounceInOut);
          },
        ),
        body: PageView(
          controller: pageController,
          children: [
            HomePage(),
            ListViewPage(),
            ScrollPage(),
          ],
        ),
      ),
    );
  }
}
