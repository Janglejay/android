import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///layout learn
main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home:MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("text1", style: TextStyle(fontSize: 30)),
          Text("text2", style: TextStyle(fontSize: 30)),
          Text("text3", style: TextStyle(fontSize: 30)),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text("col1",style: TextStyle(fontSize: 30)),
              Text("col2",style: TextStyle(fontSize: 30))
            ],
          )
        ],
      ),
    );
  }

}