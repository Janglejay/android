import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: MyHomePage("Stateful Test"),
    );
  }
}

class MyHomePage extends StatefulWidget {

  final String name;
  MyHomePage(this.name);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage>{
  int _count = 0;
  FloatingActionButtonLocation _location;

//  @override
//  void initState() {
//    super.initState();
//  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
      ),
      body: Center(
        child: Text("click: $_count", style: TextStyle(fontSize: 50,color: Colors.redAccent),),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _increament,
      ),
      floatingActionButtonLocation: _location,
    );
  }

  void _increament() {
    _count++;
    _location = _count % 2 == 0 ?
    FloatingActionButtonLocation.endFloat :
    FloatingActionButtonLocation.centerFloat;
    setState(() {});
  }
}
