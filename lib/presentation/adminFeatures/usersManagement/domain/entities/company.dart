
import '../../data/models/company_dto.dart';

class Company {
  int? id;
  String? companyName;

  Company({this.id, this.companyName});

   factory Company.fromDto(CompanyDto json) {
     return Company(
       id: json.id,
       companyName: json.companyName,
     );
   }
}

