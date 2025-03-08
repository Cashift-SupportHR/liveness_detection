import '../../data/models/ban_employee_details_dto.dart';

class BanEmployeeDetails {
  int? id;
  String? name;
  String? logo;
  String? email;
  String? idNumber;
  String? city;
  String? gender;
  String? birthDate;
  String? age;
  String? computerLevel;
  String? currentSituation;
  String? englishLevel;
  String? educationLevel;
  String? favourateJob;
  List<StatisticsBanEmployee>? freelanceApply;
  int? numPreviousOpportunities;

  BanEmployeeDetails(
      {this.id,
      this.name,
      this.logo,
      this.email,
      this.idNumber,
      this.city,
      this.gender,
      this.birthDate,
      this.age,
      this.computerLevel,
      this.currentSituation,
      this.englishLevel,
      this.educationLevel,
      this.favourateJob,
      this.freelanceApply,
      this.numPreviousOpportunities});

  factory BanEmployeeDetails.fromDto(BanEmployeeDetailsDto json) {
    return BanEmployeeDetails(
        id: json.id,
        name: json.name,
        logo: json.logo,
        email: json.email,
        idNumber: json.idNumber,
        city: json.city,
        birthDate: json.birthDate,
        gender: json.gender,
        age: json.age,
        computerLevel: json.computerLevel,
        currentSituation: json.currentSituation,
        educationLevel: json.educationLevel,
        englishLevel: json.englishLevel,
        favourateJob: json.favourateJob,
        freelanceApply: json.freelanceApply,
        numPreviousOpportunities: json.numPreviousOpportunities,
    );
  }
}
