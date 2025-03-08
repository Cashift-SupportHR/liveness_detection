
import '../../data/models/employee_data_dto.dart';

class EmployeeData {
  int? id;
  int? freeLanceId;
  String? name;
  String? logo;
  String? phone;
  String? email;
  String? qualificationDataName;
  String? favoriteJob;
  String? age;
  String? cityName;
  String? national;
  String? idNumber;
  String? length;
  String? weight;

  EmployeeData({this.id, this.freeLanceId, this.name, this.logo, this.phone, this.email, this.qualificationDataName, this.favoriteJob, this.age, this.cityName, this.national, this.idNumber, this.length, this.weight});

   factory EmployeeData.fromDto(EmployeeChashifterDataDto json) {
     return EmployeeData(
       id: json.id,
       freeLanceId: json.freelanceId,
       name: json.name,
       logo: json.logo,
       phone: json.phone,
       email: json.email,
       qualificationDataName: json.qualificationDataName,
       favoriteJob: json.favourateJob,
       age: json.age,
       cityName: json.cityName,
       national: json.national,
       idNumber: json.idNumber,
       length: json.length,
       weight: json.wieght,
     );
   }
}

