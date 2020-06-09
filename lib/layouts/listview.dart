import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: ListView(
          children: <Widget>[
            _buildImage(),
            _buildTitleSelection(),
            _buildButtonSelection(),
            _buildTextSelection()
          ],
        ),
      ),
    );
  }

  _buildImage() {
    return Container(
      height: 220,
      child: Image.asset(
        "assets/images/tobe.jpg",
        fit: BoxFit.cover,
      ),
    );
  }

  _buildTitleSelection() {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("To Be Or Not To Be",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                Text(
                  "janglejay 2020/6/6",
                  style: TextStyle(color: Colors.blueGrey),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Icon(
              Icons.star,
              size: 35,
              color: Colors.red,
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              "21",
              style: TextStyle(fontSize: 18),
            ),
          )
        ],
      ),
    );
  }

  _buildButtonSelection() {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _BuildMyColumn(Icons.call, "CALL"),
          _BuildMyColumn(Icons.near_me, "ROUTE"),
          _BuildMyColumn(Icons.share, "SHARE"),
        ],
      ),
    );
  }
  _BuildMyColumn(IconData icon, String text){
    return Column(
      children: <Widget>[
        Icon(icon,color: Colors.blue,),
        Text(text)
      ],
    );
  }

  _buildTextSelection() {
    return Container(
      padding: EdgeInsets.all(32),
      child: Text(
        "Life is full of "
            "confusing and disordering Particular time,"
            "a particular location,Do the arranged thing of"
            " ten million time in the brain,Step by step ,"
            "the life is hard to avoid delicacy and stiffness No enthusiasm forever,No unexpected happening of surprising and pleasing So,only silently ask myself "
            "in mind Next happiness,when will come?",
        style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
      ),
    );
  }
}
