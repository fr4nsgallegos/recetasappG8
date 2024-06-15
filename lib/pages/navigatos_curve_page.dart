import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:recetas_app_g8/models/screen_model.dart';
import 'package:recetas_app_g8/pages/calculator_page.dart';
import 'package:recetas_app_g8/pages/home_page.dart';
import 'package:recetas_app_g8/pages/list_view_page.dart';
import 'package:recetas_app_g8/pages/reto_container_page.dart';
import 'package:recetas_app_g8/pages/scroll_page.dart';
import 'package:recetas_app_g8/pages/textformfield_example_page.dart';

class NavigatorCurve extends StatefulWidget {
  @override
  State<NavigatorCurve> createState() => _NavigatorCurveState();
}

class _NavigatorCurveState extends State<NavigatorCurve> {
  final pageController = PageController();
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  int activePageIndex = 0;

  void onDrawerItemTap(ScreenModel screenModel) {
    int index = pagesDetails.indexOf(screenModel);
    activePageIndex = index;
    pageController.jumpToPage(activePageIndex);
    Navigator.pop(context);
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _key,
        floatingActionButton: FloatingActionButton(onPressed: () {
          _key.currentState!.openDrawer();
        }),
        appBar: AppBar(
          title: Text(pagesDetails[activePageIndex].title),
          backgroundColor: pagesDetails[activePageIndex].bgColor,
        ),
        endDrawer: Drawer(),
        drawer: Container(
          width: MediaQuery.of(context).size.width / 1.3,
          child: Drawer(
            child: ListView(
              children: [
                DrawerHeader(
                  child: Image.network(
                      "https://www.pngall.com/wp-content/uploads/5/Mobile-Application-Transparent.png"),
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                ),
                ...pagesDetails
                    .map(
                      (e) => ListTile(
                        leading: e.icono,
                        title: Text(e.title),
                        onTap: () {
                          onDrawerItemTap(e);
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => e.pageName,
                          //   ),
                          // );
                        },
                      ),
                    )
                    .toList(),
              ],
            ),
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
