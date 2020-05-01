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
  Student.fromOrigin(
      {this.id,
      this.name,
      this.gender,
      this.nation,
      this.specialty,
      this.classId,
      this.telephone,
      this.flatId,
      this.dormitoryId});
  Student.fromDb(Map<String, dynamic> parsedJson)
      : id = parsedJson['id'],
        name = parsedJson['name'],
        gender = parsedJson['gender'] == 1 ? Gender.M : Gender.F,
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

  notComplete() {
    if (id == null) return true;
    if (name == null) return true;
    if (gender == null) return true;
    if (nation == null) return true;
    if (specialty == null) return true;
    if (classId == null) return true;
    if (telephone == null) return true;
    if (flatId == null) return true;
    if (dormitoryId == null) return true;
    return false;
  }
}
