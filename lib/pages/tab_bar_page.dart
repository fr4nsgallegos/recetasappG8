import 'dart:math';

import 'package:flutter/material.dart';
import 'package:recetas_app_g8/models/screen_model.dart';

class TabBarPage extends StatefulWidget {
  @override
  State<TabBarPage> createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 6, vsync: this);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab navigator"),
          bottom: TabBar(
            controller: _tabController,
            tabs: [
              ...pagesDetails
                  .map((e) => Tab(
                        // child: e.icono,
                        icon: e.icono,
                        text: e.title,
                      ))
                  .toList()
            ],
            // dividerColor: Colors.red,
            isScrollable: true,
            // labelColor: Colors.,
            indicatorColor: Colors.red,
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            ...pagesDetails.map((e) => Center(child: e.pageName)).toList()
          ],
        ),
      ),
    );
  }
}
