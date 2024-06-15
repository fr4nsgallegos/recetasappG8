import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:recetas_app_g8/models/screen_model.dart';
import 'package:recetas_app_g8/pages/calculator_page.dart';
import 'package:recetas_app_g8/pages/home_page.dart';
import 'package:recetas_app_g8/pages/list_view_page.dart';
import 'package:recetas_app_g8/pages/reto_container_page.dart';
import 'package:recetas_app_g8/pages/scroll_page.dart';
import 'package:recetas_app_g8/pages/textformfield_example_page.dart';

class TabBarPage extends StatefulWidget {
  @override
  State<TabBarPage> createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {
  final pageController = PageController();

  int activePageIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pagesDetails.add(pagesDetails)
    
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("App bar"),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.cyan,
          buttonBackgroundColor: Colors.yellow,
          color: Colors.red,
          // height: 50,
          index: activePageIndex,
          items: [
            Icon(Icons.home),
            Icon(Icons.food_bank_outlined),
            Icon(Icons.person),
            Text("4"),
            Text("5"),
            Text("6"),
          ],
          onTap: (index) {
            pageController.animateToPage(index,
                duration: Duration(milliseconds: 300),
                curve: Curves.bounceInOut);
          },
        ),
        body: PageView(
          controller: pageController,
          onPageChanged: (index) {
            activePageIndex = index;
            setState(() {});
          },
          children: [
            HomePage(
              bgColor: Color(0xff264653),
            ),
            ListViewPage(bgColor: Color(0xff2a9d8f)),
            ScrollPage(
              bgColor: Color(0xffe9c46a),
            ),
            CalculatorPage(bgColor: Color(0xff1F1F1F)),
            RetoContainerPage(bgColor: Color(0xfff4a261)),
            TextFormFieldExamplePage(bgColor: Color(0xffe76f51)),
          ],
        ),
      ),
    );
  }
}
