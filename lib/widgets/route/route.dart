
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      routes: {
        MyHomePage.routerName: (context) {
          return MyHomePage();
        },
        MyCart.routerName: (context) {
          return MyCart();
        }
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  static const String routerName = '/';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text("首页"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.pushNamed(context, MyCart.routerName);
            },
          )
        ],
      ),
      body: Center(
        child: Text(
          "HOME PAGE",
          style: TextStyle(
              fontSize: 50,
              color: Colors.blue
          ),
        ),
      ),
    );
  }
}

class MyCart extends StatelessWidget {
  static const String routerName  = '/MyCart';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("购物车"),
      ),
      body: MyListView(),
    );
  }


}
class MyListView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _buildListView(20);
  }
  ListView _buildListView(int count) {
    return ListView.separated(
      itemCount: count,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          padding: EdgeInsets.all(15),
          child: Text(
            '条目$index',
            style: TextStyle(fontSize: 20),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return Divider();
      },
    );
  }

}
