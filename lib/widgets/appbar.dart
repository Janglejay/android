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
      appBar: _buildAppBar(),
      body: Center(
        child: Text("center"),
      ),
    );
  }

  _buildAppBar() {
    return AppBar(
      leading: Icon(Icons.account_balance),
      title: Text("My App"),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.share),
          onPressed: () {},
        ),
        IconButton(icon: Icon(Icons.access_alarm), onPressed: () {}),
        IconButton(
          icon: Icon(Icons.markunread_mailbox),
          onPressed: () {},
        ),
        _buildPopupMenuButton(),
      ],
    );
  }

  PopupMenuButton _buildPopupMenuButton() {
    return PopupMenuButton(
        onSelected: (value) {},
        icon: Icon(Icons.menu),

        itemBuilder: (BuildContext context) {
          return [
            PopupMenuItem(
              value: 1,
              child: ListTile(
                leading: Icon(Icons.chat_bubble),
                title: Text('发起群聊'),
              ),
            ),
            PopupMenuDivider(),
            PopupMenuItem(
              value: 2,
              child: ListTile(
                leading: Icon(Icons.person_add),
                title: Text('添加朋友'),
              ),
            ),
            PopupMenuDivider(),
            PopupMenuItem(
              value: 3,
              child: ListTile(
                leading: Icon(Icons.aspect_ratio),
                title: Text('扫一扫'),
              ),
            ),
            PopupMenuDivider(),
            PopupMenuItem(
              value: 3,
              child: ListTile(
                leading: Icon(Icons.attach_money),
                title: Text('收付款'),
              ),
            ),
          ];
        });
  }
}
