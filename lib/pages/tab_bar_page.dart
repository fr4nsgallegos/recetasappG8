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
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(pagesDetails[activePageIndex].title),
          backgroundColor: pagesDetails[activePageIndex].bgColor,
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                // padding: EdgeInsets.all(8),
                child: Text("Header"),
                decoration: BoxDecoration(
                  color: Color(0xff669bbc),
                ),
              ),
              ...pagesDetails
                  .map((e) => ListTile(leading: e.icono, title: Text(e.title)))
                  .toList(),
            ],
          ),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: pagesDetails[activePageIndex].bgColor,
          buttonBackgroundColor:
              pagesDetails[activePageIndex].colorButtonOption,
          // color: Colors.red,
          // height: 50,
          index: activePageIndex,
          items: [
            ...pagesDetails.map((e) => e.icono).toList()

            // pagesDetails[0].icono,
            // pagesDetails[1].icono,
            // pagesDetails[2].icono,
            // pagesDetails[3].icono,
            // pagesDetails[4].icono,
            // pagesDetails[5].icono,
            // Icon(Icons.home),
            // Icon(Icons.food_bank_outlined),
            // Icon(Icons.person),
            // Text("4"),
            // Text("5"),
            // Text("6"),
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
            ...pagesDetails.map((e) => e.pageName).toList()

            // pagesDetails[0].pageName,
            // pagesDetails[1].pageName,
            // pagesDetails[2].pageName,
            // pagesDetails[3].pageName,
            // pagesDetails[4].pageName,
            // pagesDetails[5].pageName,
            // HomePage(
            //   bgColor: Color(0xff264653),
            // ),
            // ListViewPage(bgColor: Color(0xff2a9d8f)),
            // ScrollPage(
            //   bgColor: Color(0xffe9c46a),
            // ),
            // CalculatorPage(bgColor: Color(0xff1F1F1F)),
            // RetoContainerPage(bgColor: Color(0xfff4a261)),
            // TextFormFieldExamplePage(bgColor: Color(0xffe76f51)),
          ],
        ),
      ),
    );
  }
}
