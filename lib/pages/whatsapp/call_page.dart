import 'package:flutter/material.dart';

class CallPage extends StatefulWidget {
  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListTile(
            leading: CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage(
                  "https://www.wilsoncenter.org/sites/default/files/media/images/person/james-person-1.jpg"),
            ),
            title: Text("Juan Manuel"),
            subtitle: Row(
              children: [
                Icon(
                  Icons.call_made,
                  color: Colors.greenAccent,
                ),
                SizedBox(
                  width: 8,
                ),
                Text("Yesterday, 10:15")
              ],
            ),
            trailing: Icon(
              Icons.call,
              color: Colors.green,
            ),
          ),
        ),
      ],
    );
  }
}
