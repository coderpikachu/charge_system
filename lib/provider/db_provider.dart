import 'dart:io';
import 'package:path/path.dart';
import 'dart:async';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class DbProvider {
  Database db;
  init() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentsDirectory.path, 'charge_system.db');
    db = await openDatabase(
      path,
      version: 1,
      onCreate: (Database newDb, int version) {
        newDb.execute('''
        CREATE TABLE Student
          (
            id INTEGER PRIMARY KEY,
            name TEXT,
            gender INTEGER,
            nation TEXT,
            specialty TEXT,
            classId INTEGER,
            telephone INTEGER,
          )
        ''');
      },
    );
  }
}
