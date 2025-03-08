import '../../data/models/employee_chasfiter_details_dto.dart';

/// id : 0
/// name : "string"
/// email : "string"
/// phoneNumber : "string"
/// idNumber : "string"
/// dateOfBirth : "2024-10-20T09:49:33.779Z"
/// gender : "string"
/// age : 0
/// cityId : 0
/// cityName : "string"
/// computerLevel : 0
/// englishLevel : 0
/// currentSituation : 0
/// qualificationName : "string"
/// profileImagePath : "string"
/// favoriteJobs : ["string"]

class EmployeeChasfiterDetails {
  EmployeeChasfiterDetails({
      this.id, 
      this.name, 
      this.email, 
      this.phoneNumber, 
      this.idNumber, 
      this.dateOfBirth, 
      this.gender, 
      this.age, 
      this.cityId, 
      this.cityName, 
      this.computerLevel, 
      this.englishLevel, 
      this.currentSituation, 
      this.qualificationName, 
      this.profileImagePath, 
      this.favoriteJobs,});


  int? id;
  String? name;
  String? email;
  String? phoneNumber;
  String? idNumber;
  String? dateOfBirth;
  String? gender;
  int? age;
  int? cityId;
  String? cityName;
  String? computerLevel;
  String? englishLevel;
  String? currentSituation;
  String? qualificationName;
  String? profileImagePath;
  List<String>? favoriteJobs;

  factory EmployeeChasfiterDetails.fromDto(EmployeeChasfiterDetailsDto json) {
    return EmployeeChasfiterDetails(
        id: json.id,
        name: json.name,
        email: json.email,
        phoneNumber: json.phoneNumber,
        idNumber: json.idNumber,
      dateOfBirth: json.dateOfBirth,
      gender: json.gender,
      age: json.age,
      cityId: json.cityId,
      cityName: json.cityName,
      computerLevel: json.computerLevel,
      englishLevel: json.englishLevel,
      currentSituation: json.currentSituation,
      qualificationName: json.qualificationName,
      profileImagePath: json.profileImagePath,
      favoriteJobs: json.favoriteJobs,


    );
  }

}