import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
      body: MyCard("深夜一角","毛不易"),
    );
  }
}

class MyCard extends StatelessWidget {
  final String songName;
  final String singer;
  MyCard(this.songName, this.singer);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(20),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.deepOrange,
        elevation: 20,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            _buildTitleRow(songName,singer),
            _buildSlider(),
            _buildButton()
          ],
        ),
      ),
    );
  }

  _buildTitleRow(String songName, String singer) {
    return Container(
      padding: EdgeInsets.only(left: 10, top: 10),
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(right: 20),
            child: (
                Icon(Icons.album, size: 72)
            )
            ,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                songName,
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              Text(
                singer,
                style: TextStyle(fontSize: 18, color: Colors.white),
              )
            ],
          )
        ],
      ),
    );
  }

  _buildSlider() {
    return Slider(
      value: 0.6,
      onChanged: (double v) {},
    );
  }

  _buildButton() {
    return ButtonBar(
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.skip_previous),
          color: Colors.white,
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.play_arrow),
          color: Colors.white,
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.skip_next),
          color: Colors.white,
          onPressed: () {},
        ),
      ],
    );
  }
}
