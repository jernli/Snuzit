import 'package:flutter/material.dart';
import '../components/navbar/nav_leading.dart';

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  Widget build(context){
    return MaterialApp(
      home: Scaffold(
        key: _scaffoldKey,
        drawer: LeadingDrawer(),
        appBar: AppBar(
          title: Text('Snuzit'),
          backgroundColor: Color.fromRGBO(13, 6, 40, 0.0),
          elevation: 0.0,
          leading: IconButton(
              icon: Icon(Icons.clear_all),
              onPressed: () {_scaffoldKey.currentState.openDrawer();},
          ),
        ),
        backgroundColor: Color.fromRGBO(249, 219, 189, 95.0),
      ),
    );
  }
}



