import 'package:flutter/material.dart';

main() => runApp(Center(
  child:   Padding(
    padding: const EdgeInsets.all(8.0),
    child:   MyApp(),
  ),
));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: <Widget>[
        buildRow1(),
        buildRow2()
      ]),
    );
  }

  Row buildRow2() {
    return Row(
        children: <Widget>[
          Expanded(
            child: Text(
              "row21",
              style: TextStyle(color: Colors.red, fontSize: 30),
            ),
            flex: 2,
          ),
          Expanded(
            child: Text(
              "row22",
              style: TextStyle(color: Colors.red, fontSize: 30),
            ),
            flex: 1,
          ),
        ],
      );
  }

  Row buildRow1() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("row11", style: TextStyle(fontSize: 30)),
          Text("row12", style: TextStyle(fontSize: 30)),
          Text("row13", style: TextStyle(fontSize: 30)),
          Text("col1", style: TextStyle(fontSize: 30)),
          Text("col2", style: TextStyle(fontSize: 30))
        ],
      );
  }
}
