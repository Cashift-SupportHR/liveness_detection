
import '../../data/models/employment_official_dto.dart';

class EmploymentOfficial {
  int? id;
  int? cityId;
  String? cityName;
  String? name;
  String? phone;
  String? email;
  String? address;
  String? timesOfWork;
  String? workDays;
  String? description;
  bool? isDeleted;
  String? descriptionAr;
  String? descriptionEn;
  String? latitude;
  String? longitude;

  EmploymentOfficial({
    this.id,
    this.cityId,
    this.cityName,
    this.name,
    this.phone,
    this.email,
    this.address,
    this.timesOfWork,
    this.workDays,
    this.description,
    this.isDeleted,
    this.descriptionAr,
    this.descriptionEn,
    this.latitude,
    this.longitude,
  });

   factory EmploymentOfficial.fromDto(EmploymentOfficialDto json){
     return EmploymentOfficial(
        id: json.id,
        cityId: json.cityId,
        cityName: json.cityName,
        name: json.name,
        phone: json.phone,
        email: json.email,
        address: json.address,
        timesOfWork: json.timesOfWork,
        workDays: json.workDays,
        description: json.description,
        isDeleted: json.isDeleted,
        descriptionAr: json.descriptionAr,
        descriptionEn: json.descriptionEn,
        latitude: json.latitude,
        longitude: json.longtude,
     );
   }
}

