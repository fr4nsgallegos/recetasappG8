import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class TabBarPage extends StatelessWidget {
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          items: [
            Icon(
              Icons.home,
              color: Colors.red,
            ),
            Icon(Icons.food_bank_outlined),
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
            Text("Hola"),
            Text("Chau"),
          ],
        ),
      ),
    );
  }
}
