import 'package:flutter/material.dart';

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  Widget build(context){
    //must define a 'build' method that returns
    //the widgets that *this* widget will show
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Snuzit'),
          backgroundColor: Color.fromRGBO(13, 6, 40, 0.0),
          elevation: 0.0,
          leading: new IconButton(
            icon: new Icon(Icons.clear_all),
            tooltip: 'View menu side bar',
            onPressed: () => _scaffoldKey.currentState.openDrawer(),
            splashColor: Color.fromRGBO(0, 0, 0, 30.0),
          ),
        ),
        backgroundColor: Color.fromRGBO(249, 219, 189, 95.0),
      ),
    );
  }
}



