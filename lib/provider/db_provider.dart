import 'dart:io';
import 'package:chargesystem/table/student.dart';
import 'package:path/path.dart';
import 'dart:async';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class DbProvider {
  Database db;
  void init() async {
    print('init again');
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentsDirectory.path, 'charge_system.db');
    db = await openDatabase(
      path,
      version: 1,
      onCreate: (Database newDb, int version) {
        newDb.execute("""
        CREATE TABLE Student
          (
            id INTEGER PRIMARY KEY,
            name TEXT,
            gender INTEGER,
            nation TEXT,
            specialty TEXT,
            classId INTEGER,
            telephone INTEGER,
            flatId INTEGER,
            dormitoryId INTEGER
          )
        """);
      },
    );
  }

  addStudent(Student student) {
    return db.insert("Student", student.toMapForDb());
  }

  Future<Student> fetchStudent(int id) async {
    final maps = await db.query(
      "Student",
      columns: null,
      where: "id = ?",
      whereArgs: [id],
    );
    if (maps.length > 0) {
      return Student.fromDb(maps.first);
    }
    return null;
  }
}
