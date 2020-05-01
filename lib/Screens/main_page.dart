import 'package:chargesystem/Screens/fetch_page.dart';
import 'package:flutter/material.dart';
import '../provider/db_provider.dart';
import 'package:chargesystem/table/student.dart';

import 'add_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  DbProvider dbProvider;
  @override
  void initState() {
    super.initState();
    print('init');
    dbProvider = DbProvider();
    dbProvider.init();
  }

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
                Icons.add,
              ),
              onPressed: () async {
                Student student = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddPage(),
                  ),
                );
                if (student == null || student.notComplete())
                  print('student==null');
                else
                  dbProvider.addStudent(student);
                print(student);
              },
            ),
            IconButton(
              icon: Icon(
                Icons.face,
              ),
              onPressed: () async {
                int id = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FetchPage(),
                  ),
                );
                print(id);
                Student student;
                if (id == null)
                  print('id==null');
                else
                  student = await dbProvider.fetchStudent(id);
                print(id);
                print(student.dormitoryId);
              },
            ),
          ],
        ),
      ),
    );
  }
}
