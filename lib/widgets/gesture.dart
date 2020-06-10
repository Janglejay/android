
import 'package:flutter/material.dart';

main() => runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: MyListTile(),
    );
  }

}

class MyListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        _buildItem(context,'无背景，无波纹'),
        Divider(),
        _buildItem2(context,'有背景时，无波纹效果'),
        Divider(),
        _buildItem3(context,'有背景颜色，有波纹')
      ],
    );
  }

  _buildItem(BuildContext context, String title) {
    return GestureDetector(
      onTap: (){
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text('点击: $title'),
          action: SnackBarAction(
            label: 'OK',
            onPressed: (){},
          ),
        ));
      },
      child: Container(

        padding: EdgeInsets.all(15),
        child: Text(title,style: TextStyle(color: Colors.redAccent,fontSize: 28),),
      ),
    );
  }

  _buildItem2(BuildContext context, String title) {
    return InkWell(
      splashColor: Colors.blueGrey,
      onTap: (){
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text('点击: $title'),
          action: SnackBarAction(
            label: 'OK',
            onPressed: (){},
          ),
        ));
      },
      child: Container(
        color: Colors.lightBlueAccent,
        padding: EdgeInsets.all(15),
        child: Text(title,style: TextStyle(color: Colors.redAccent,fontSize: 28),),
      ),
    );
  }
  _buildItem3(BuildContext context, String title){
    return Ink(
      color: Colors.amber,
      child: InkWell(
        splashColor: Colors.blueGrey,
        onTap: (){
          Scaffold.of(context).showSnackBar(SnackBar(
            content: Text('点击: $title'),
            action: SnackBarAction(
              label: 'OK',
              onPressed: (){},
            ),
          ));
        },
        child: Container(
          padding: EdgeInsets.all(15),
          child: Text(title,style: TextStyle(color: Colors.redAccent,fontSize: 28),),
        ),
      ),
    );
  }
}