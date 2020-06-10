import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Navigation',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  // 可以保存状态
  _change(int index) {
    _currentIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.orange,
        onTap: _change,
        currentIndex: _currentIndex,
        items: _listItems(),
      ),
      //body: _children[_currentIndex],
      body: PageView.builder(
        itemCount: _listChildren().length,
        itemBuilder: (context, _) {
          return _listChildren()[_currentIndex];
        },
        onPageChanged: _change,
      ),
    );
  }

  List<BottomNavigationBarItem> _listItems() {
    return [
      BottomNavigationBarItem(
        icon: Icon(Icons.home,color: Colors.redAccent,),
        title: Text('Home'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.book,color: Colors.redAccent),
        title: Text('Book'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.music_video,color: Colors.redAccent),
        title: Text('Music'),
        //backgroundColor: Colors.orange
      ),
//      BottomNavigationBarItem(
//        icon: Icon(Icons.movie),
//        title: Text('Movie'),
//      ),
    ];
  }

  List<Widget> _listChildren() {
    return [
      MyContainer('Welcome'),
      MyContainer('Read Something?'),
      MyContainer('Good Music Brings Good Mood'),
//      MyContainer('MOVE')
    ];
  }
}

class MyContainer extends StatelessWidget {
  final String title;

  MyContainer(this.title);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text(
        title,
        style: TextStyle(fontSize: 40, color: Colors.pink),
      ),
    );
  }
}
