import 'package:flutter/material.dart';
import 'Screens/main_page.dart';
import 'Screens/add_page.dart';
import 'Screens/fetch_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MainPage(),
        '/fetch': (context) => FetchPage(),
        '/add': (context) => AddPage(),
      },
    );
  }
}
