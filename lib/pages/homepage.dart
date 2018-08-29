import 'package:flutter/material.dart';
import './otherpages.dart';

class Homepage extends StatefulWidget{
  @override
  _HomepageState createState() => new _HomepageState();
}


class _HomepageState extends State<Homepage>{

  String profilePicture1 = "https://img00.deviantart.net/35f0/i/2015/018/2/6/low_poly_landscape__the_river_cut_by_bv_designs-d8eib00.jpg";
  String profilePicture2 = "https://yt3.ggpht.com/-2_2skU9e2Cw/AAAAAAAAAAI/AAAAAAAAAAA/6NpH9G8NWf4/s900-c-k-no-mo-rj-c0xffffff/photo.jpg";

  void switchAccounts() {

    String backupPicture = profilePicture1;

    this.setState(() {
      profilePicture1 = profilePicture2;
      profilePicture2 = backupPicture;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new Text("My Drawer App"),
          backgroundColor: Colors.redAccent),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("KJ"),
              accountEmail: new Text("kj@gmail.com"),
              currentAccountPicture: new GestureDetector( //Gesture has onTap
                //onTap: () => print("This is the current user"),
                child: new CircleAvatar(
                  backgroundImage: new NetworkImage(profilePicture1),
                )
              ),
              otherAccountsPictures: <Widget>[
                new GestureDetector(
                  onTap: () {
                  switchAccounts();
                  print("bla");
                  },
                  child: new CircleAvatar(
                    backgroundImage: new NetworkImage(profilePicture2),
                  ),
                )
              ],
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new NetworkImage(profilePicture1),
                  fit: BoxFit.fill
                ),
              ),
            ),
            new ListTile(
              title: new Text("First page"),
              trailing: new Icon(Icons.arrow_upward),
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new OtherPage("First Page")))
            ),
            new ListTile(
              title: new Text("Seond page"),
              trailing: new Icon(Icons.arrow_right), onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new OtherPage("Second Page")))
            ),
            new Divider(),
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.cancel),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        )
      ),
      body: new Center(
        child: new Text("Homepage", style: new TextStyle(fontSize: 35.0),)
      )
    );
  }
}