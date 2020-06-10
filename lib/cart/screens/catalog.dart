import 'package:flutter/material.dart';
import 'package:flutterexample/cart/models/cartmodel.dart';
import 'package:flutterexample/cart/models/catalogmodel.dart';
import 'package:provider/provider.dart';

class Catalog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('商品'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add_shopping_cart),
            onPressed: () => Navigator.of(context).pushNamed('/cart'),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(flex: 9, child: ProductList()),
          TotalPrice()
        ],
      ),
    );
  }
}

class ProductList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ProductListState();
  }
}

class ProductListState extends State<ProductList> {
  CatalogModel catalog;
  CartModel cart;

  @override
  void initState() {
    super.initState();
    _load();
  }

  // 模拟进入页面的网络异步请求
  _load() {
    // 必须异步执行
    Future.delayed(Duration.zero, () => catalog.loadProducts());
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // 此组件，需要监听catalog变化渲染商品，因此需要监听CatalogModel变化
    catalog = Provider.of<CatalogModel>(context);
    // 需要操作更新CartModel，但无需响应CartModel更新
    cart = Provider.of<CartModel>(context, listen: false);
    return catalog.listProducts().length == 0
        ? Center(
            child: CircularProgressIndicator(),
          )
        : ListView.separated(
            padding: EdgeInsets.all(5),
            itemCount: catalog.listProducts().length,
            itemBuilder: (context, index) {
              return Container(
                color: null,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          Container(
                            child: Text(
                              '${catalog.listProducts()[index].name}',
                              style: TextStyle(fontSize: 28),
                            ),
                            padding: EdgeInsets.only(right: 50),
                          ),
                          Text(
                            '${catalog.listProducts()[index].price}',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.remove,
                        color: Colors.red,
                        size: 30,
                      ),
                      onPressed: () {
                        _remove(catalog.listProducts()[index]);
                      },
                    ),
                    SizedBox(
                      width: 16,
                      child: ItemCount(catalog.listProducts()[index]),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.add,
                        color: Colors.blue,
                        size: 30,
                      ),
                      onPressed: () {
                        _add(catalog.listProducts()[index]);
                      },
                    )
                    //AddButton(_products[index])
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) {
              return Divider();
            },
          );
  }

  _add(Product p) {
    cart.addItem(p);
  }

  _remove(Product p) {
    cart.removeItem(p);
  }
}

class ItemCount extends StatelessWidget {
  final Product product;

  ItemCount(this.product);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer<CartModel>(
      builder: (c, cart, child) {
        return Text('${cart.getItemCount(product)}');
      },
    );
  }
}

class TotalPrice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer<CartModel>(
      builder: (context, cart, widget) {
        return Text('Gross Amount：${cart.getTotalPrices()}',
            style: TextStyle(color: Colors.red, fontSize: 40));
      },
    );
  }
}
