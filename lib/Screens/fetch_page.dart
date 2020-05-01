import 'package:flutter/material.dart';

class FetchPage extends StatefulWidget {
  @override
  _FetchPageState createState() => _FetchPageState();
}

class _FetchPageState extends State<FetchPage> {
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
            Input(
              onModified: (newValue) {
                setState(() {
                  id = int.parse(newValue);
                });
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

class Input extends StatelessWidget {
  final Function onModified;
  Input({this.onModified});
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onModified,
    );
  }
}
