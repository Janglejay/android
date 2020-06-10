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
    Item item = Item('铅笔', 22.0);
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text("首页"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.pushNamed(context, MyCart.routerName, arguments: item)
                  .then(
                      (value) {
                    print(value);
                    return value;
                  }
              );
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

class Item {
  final String name;
  final double prince;

  Item(this.name, this.prince);

}

class MyCart extends StatelessWidget {

  static const String routerName = '/MyCart';

  @override
  Widget build(BuildContext context) {
    final Item item = ModalRoute
        .of(context)
        .settings
        .arguments;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.pop(context, item.prince);
            },
        ),

        title: Text("购物车"),
      ),
      body: Center(
          child: ListTile(
            title: Text(item.name),
            trailing: Text(item.prince.toString()),
          )
      ),
    );
  }
}

