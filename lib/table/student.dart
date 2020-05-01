import 'package:chargesystem/gender.dart';

class Student {
  int id;
  String name;
  Gender gender;
  String nation;
  String specialty;
  int classId;
  int telephone;
  int flatId;
  int dormitoryId;
  Student.fromDb(Map<String, dynamic> parsedJson)
      : id = parsedJson['id'],
        name = parsedJson['name'],
        gender = parsedJson['gender'] ? Gender.M : Gender.F,
        nation = parsedJson['nation'],
        specialty = parsedJson['specialty'],
        classId = parsedJson['classId'],
        telephone = parsedJson['telephone'],
        flatId = parsedJson['flatId'],
        dormitoryId = parsedJson['dormitoryId'];

  Map<String, dynamic> toMapForDb() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'gender': gender == Gender.M,
      'nation': nation,
      'specialty': specialty,
      'classId': classId,
      'telephone': telephone,
      'flatId': flatId,
      'dormitoryId': dormitoryId,
    };
  }
}
