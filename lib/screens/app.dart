import 'package:flutter/material.dart';

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 0;

  void fetchImage() async {
    counter++;
  }


  Widget build(context){
    //must define a 'build' method that returns
    //the widgets that *this* widget will show
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Meme it up fam!'),
          backgroundColor: Color.fromRGBO(13, 6, 40, 100.0),
        ),
        backgroundColor: Color.fromRGBO(249, 219, 189, 95.0),
      ),
    );
  }
}



