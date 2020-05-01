import 'package:chargesystem/Screens/fetch_page.dart';
import 'package:flutter/material.dart';
import '../provider/db_provider.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  DbProvider dbProvider;
  TextEditingController _controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('test'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.category,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/fetch');
              },
            ),
            IconButton(
              icon: Icon(
                Icons.add,
              ),
              onPressed: () async {
                int id = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FetchPage(),
                  ),
                );
                print(id);
                print(dbProvider.fetchStudent(id));
                print(id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
