import 'package:flutter/material.dart';

class FetchPage extends StatefulWidget {
  @override
  _FetchPageState createState() => _FetchPageState();
}

class _FetchPageState extends State<FetchPage> {
  TextEditingController _controller;
  int id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('fetch'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            TextField(
              controller: _controller,
              onChanged: (newString) {
                try {
                  id = int.parse(newString);
                } catch (e) {
                  print(e);
                }
              },
            ),
            FlatButton(
              child: Text('执行'),
              onPressed: () {
                Navigator.pop(context, id);
              },
            )
          ],
        ),
      ),
    );
  }
}
