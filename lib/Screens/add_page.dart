import 'package:chargesystem/table/student.dart';
import 'package:flutter/material.dart';
import 'package:chargesystem/gender.dart';

class AddPage extends StatefulWidget {
  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  int id;
  String name;
  Gender gender;
  String nation;
  String specialty;
  int classId;
  int telephone;
  int flatId;
  int dormitoryId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('add'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Input(
              onModified: (newValue) {
                id = int.parse(newValue);
              },
            ),
            Input(
              onModified: (newValue) {
                name = newValue;
              },
            ),
            Input(
              onModified: (newValue) {
                gender = newValue == 'M' ? Gender.M : Gender.F;
              },
            ),
            Input(
              onModified: (newValue) {
                nation = newValue;
              },
            ),
            Input(
              onModified: (newValue) {
                specialty = newValue;
              },
            ),
            Input(
              onModified: (newValue) {
                classId = int.parse(newValue);
              },
            ),
            Input(
              onModified: (newValue) {
                telephone = int.parse(newValue);
              },
            ),
            Input(
              onModified: (newValue) {
                flatId = int.parse(newValue);
              },
            ),
            Input(
              onModified: (newValue) {
                dormitoryId = int.parse(newValue);
              },
            ),
            FlatButton(
              child: Text('执行'),
              onPressed: () {
                Navigator.pop(
                  context,
                  Student.fromOrigin(
                    id: id,
                    name: name,
                    gender: gender,
                    nation: nation,
                    specialty: specialty,
                    classId: classId,
                    telephone: telephone,
                    flatId: flatId,
                    dormitoryId: dormitoryId,
                  ),
                );
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
