import '../../data/models/insurances_dto.dart';

/// id : 3
/// insuranceImagePath : "https://cashift-my.sharepoint.com/personal/dcc_cashift_onmicrosoft_com/_layouts/15/download.aspx?UniqueId=06994974-32ea-4b52-8b5d-1f2c1513a18e&Translate=false&tempauth=v1.eyJzaXRlaWQiOiIwOTQ1MmNiYS00YWFjLTQxNjAtODkzMC0wMDVmZjcwY2U1ZDUiLCJhcHBfZGlzcGxheW5hbWUiOiJjbGVhcmFuY2VjZXJ0aWZpY2F0aW9uIiwiYXVkIjoiMDAwMDAwMDMtMDAwMC0wZmYxLWNlMDAtMDAwMDAwMDAwMDAwL2Nhc2hpZnQtbXkuc2hhcmVwb2ludC5jb21AMGI4NTJmZWEtMGVjNy00YjAwLWI3OGItYzNiYmQ2NDc5NzlhIiwiZXhwIjoiMTcyODU2MTMyNyJ9.CgoKBHNuaWQSAjY0EgsI-PyG2ILJtD0QBRoMMjAuMjAuNDQuMjI0KixncndJTnJ3MkJ2RUpFdWpqWU0wN0hoY1pMaFgwb0xtRFlsTk45Z0h6VnhBPTCeATgBQhChWIPpizAAoAvcvPzyMeqzShBoYXNoZWRwcm9vZnRva2VuegExugFAYWxsc2l0ZXMud3JpdGUgYWxsZmlsZXMud3JpdGUgYWxsZmlsZXMucmVhZCBhbGxzaXRlcy5mdWxsY29udHJvbMIBSWRjMzdiYzgyLTlmNGQtNDIyYy1hNjI4LTJkZGQwZTM2NGRkN0AwYjg1MmZlYS0wZWM3LTRiMDAtYjc4Yi1jM2JiZDY0Nzk3OWHIAQE.9FIvCu8iPCJGFAo8FlY0YzWmNe5CxlcQfy8DwbyerjU&ApiVersion=2.0"
/// insuranceNumber : "12345"
/// insuranceProvider : "asd"
/// insuranceExpiryDate : "2025-10-10T00:00:00"
/// insuranceImage : "dd"
/// vehicleId : 1
/// vehicleInsuranceTypeId : 1

class Insurances {
  Insurances({
      this.id, 
      this.insuranceImagePath, 
      this.insuranceNumber, 
      this.insuranceProvider, 
      this.insuranceExpiryDate, 
      this.insuranceImage, 
      this.vehicleId, 
      this.vehicleInsuranceTypeName,
      this.vehicleInsuranceTypeId,});


  int? id;
  String? insuranceImagePath;
  String? insuranceNumber;
  String? insuranceProvider;
  String? insuranceExpiryDate;
  String? insuranceImage;
  String? vehicleInsuranceTypeName;
  int? vehicleId;
  int? vehicleInsuranceTypeId;

  factory Insurances.fromDto(InsurancesDto json) {
    return Insurances(
      insuranceImagePath: json.insuranceImagePath,
      insuranceNumber: json.insuranceNumber,
      insuranceProvider: json.insuranceProvider,
      insuranceExpiryDate: json.insuranceExpiryDate,
      insuranceImage: json.insuranceImage,
      vehicleId: json.vehicleId,
      vehicleInsuranceTypeId: json.vehicleInsuranceTypeId,
      vehicleInsuranceTypeName: json.vehicleInsuranceTypeName,
      id: json.id,

    );
  }

}