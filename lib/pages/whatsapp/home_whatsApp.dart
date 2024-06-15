import 'package:flutter/material.dart';
import 'package:recetas_app_g8/pages/whatsapp/chat_page.dart';
import 'package:recetas_app_g8/pages/whatsapp/status_page.dart';

class HomeWhatsApp extends StatefulWidget {
  @override
  State<HomeWhatsApp> createState() => _HomeWhatsAppState();
}

class _HomeWhatsAppState extends State<HomeWhatsApp>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Color(0xff103A27),
        appBar: AppBar(
          title: Text("WhatsApp"),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
          ],
          bottom: TabBar(
            controller: _tabController,
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: "Chats"),
              Tab(text: "Status"),
              Tab(text: "Calls"),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            Center(child: Text("Camera")),
            ChatPage(),
            StatusPage(),
            Center(child: Text("Calls")),
          ],
        ),
      ),
    );
  }
}
