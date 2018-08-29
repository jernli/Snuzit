import 'package:flutter/material.dart';

class LeadingDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('Im loaded');
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text("hi 🐜"),
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Title'),
              onTap: () {
                Navigator.pop(context);
                print('Title');
              },
            ),
            ListTile(
              leading: Icon(Icons.subject),
              title: Text('Science Behind'),
              onTap: () {
                Navigator.pop(context);
                print('Science Behind');
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('Contact Us'),
              onTap: () {
                Navigator.pop(context);
                print('Contact Us');
              },
            ),
            new Divider(),
            ListTile(
              title: Text('Build with Flutter'),
              trailing: Icon(Icons.build),
              subtitle: Text('version 1.2'),
            )
          ],
        ),
    );
  }
}
