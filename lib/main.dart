import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new Page1(),
    title: "Navigasi",
    routes: <String, WidgetBuilder>{
      // Routes
      '/Page1': (BuildContext context) => new Page1(),
      '/Page2': (BuildContext context) => new Page2(),
    },
  ));
}
// Page Pertama 
class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home"),
      ),
      body: new Center(
        child: new IconButton(
            icon: new Icon(Icons.home, size: 50.0),
            onPressed: () {
              Navigator.pushNamed(context, '/Page2');
            }),
      ),
    );
  }
}

// Page 2
class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Music"),
      ),
      body: new Center(
        child: new IconButton(
            icon: new Icon(Icons.headset, size: 50.0),
            onPressed: () {
              Navigator.pushNamed(context, '/Page1');
            }),
      ),
    );
  }
}
