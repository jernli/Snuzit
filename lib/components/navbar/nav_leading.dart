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
            child: ListTile(
              leading: Icon(Icons.arrow_back),
              onTap: () => Navigator.pop(context),
            ),
            padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 100.0),
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
            title: Text('Info'),
            onTap: () {
              Navigator.pop(context);
              print('info');
            },
          ),
          Divider(
            height: 16.0,
          ),
          ListTile(
            leading: Icon(Icons.build),
            title: Text('Built with Flutter'),
            subtitle: Text('Version 1.2'),
          )
        ],
      ),
    );
  }
}
