import '../../data/models/custody_vehicle.dart';
import '../../data/models/vehicle_details_dto.dart';
import 'vehicle_list_of_images.dart';

/// vehicleListOfImages : [{"faceId":1,"faceName":"الوجه الأول للصورة","imageId":1,"imageUrl":"https://cashift-my.sharepoint.com/personal/dcc_cashift_onmicrosoft_com/_layouts/15/download.aspx?UniqueId=f0728c10-2d8e-46c3-8815-f9243fa427f5&Translate=false&tempauth=v1.eyJzaXRlaWQiOiIwOTQ1MmNiYS00YWFjLTQxNjAtODkzMC0wMDVmZjcwY2U1ZDUiLCJhcHBfZGlzcGxheW5hbWUiOiJjbGVhcmFuY2VjZXJ0aWZpY2F0aW9uIiwiYXVkIjoiMDAwMDAwMDMtMDAwMC0wZmYxLWNlMDAtMDAwMDAwMDAwMDAwL2Nhc2hpZnQtbXkuc2hhcmVwb2ludC5jb21AMGI4NTJmZWEtMGVjNy00YjAwLWI3OGItYzNiYmQ2NDc5NzlhIiwiZXhwIjoiMTcyODU2MDAzOCJ9.CgoKBHNuaWQSAjY0EgsI6PySz6LItD0QBRoLMjAuMjAuNDQuOTcqLGZsci9jMUpwd21QNDRHK2diUUlJM2hZdkJaZW9NYTU2UElPODcyVmhUNEU9MJ4BOAFCEKFYgq6-MACgPNod4fXmGuZKEGhhc2hlZHByb29mdG9rZW56ATG6AUBhbGxzaXRlcy53cml0ZSBhbGxmaWxlcy53cml0ZSBhbGxmaWxlcy5yZWFkIGFsbHNpdGVzLmZ1bGxjb250cm9swgFJZGMzN2JjODItOWY0ZC00MjJjLWE2MjgtMmRkZDBlMzY0ZGQ3QDBiODUyZmVhLTBlYzctNGIwMC1iNzhiLWMzYmJkNjQ3OTc5YcgBAQ.vARYoCXDA6DgRuv0wKTBmuurE8Eq5gzdaTRAULGtZZ8&ApiVersion=2.0"},{"faceId":2,"faceName":"الوجه الثاني للصورة","imageId":2,"imageUrl":"https://cashift-my.sharepoint.com/personal/dcc_cashift_onmicrosoft_com/_layouts/15/download.aspx?UniqueId=006f23c7-cf13-479a-89fd-827edaea4340&Translate=false&tempauth=v1.eyJzaXRlaWQiOiIwOTQ1MmNiYS00YWFjLTQxNjAtODkzMC0wMDVmZjcwY2U1ZDUiLCJhcHBfZGlzcGxheW5hbWUiOiJjbGVhcmFuY2VjZXJ0aWZpY2F0aW9uIiwiYXVkIjoiMDAwMDAwMDMtMDAwMC0wZmYxLWNlMDAtMDAwMDAwMDAwMDAwL2Nhc2hpZnQtbXkuc2hhcmVwb2ludC5jb21AMGI4NTJmZWEtMGVjNy00YjAwLWI3OGItYzNiYmQ2NDc5NzlhIiwiZXhwIjoiMTcyODU2MDAzOCJ9.CgoKBHNuaWQSAjY0EgsIkpCGz6LItD0QBRoLMjAuMjAuNDQuOTcqLHcrdThtbUZBMjQvdHdlT3pTNHhJRGlwaEVIWm5NWnQyLzUrUnhMZURXQTg9MJ4BOAFCEKFYgq69gACgENAaDHCO059KEGhhc2hlZHByb29mdG9rZW56ATG6AUBhbGxzaXRlcy53cml0ZSBhbGxmaWxlcy53cml0ZSBhbGxmaWxlcy5yZWFkIGFsbHNpdGVzLmZ1bGxjb250cm9swgFJZGMzN2JjODItOWY0ZC00MjJjLWE2MjgtMmRkZDBlMzY0ZGQ3QDBiODUyZmVhLTBlYzctNGIwMC1iNzhiLWMzYmJkNjQ3OTc5YcgBAQ.AUcaqjLUwbk6qC-ivsqc31sFqcnmJNo9EAo8BhaOIv0&ApiVersion=2.0"},{"faceId":3,"faceName":"الوجه الثالث للصورة","imageId":3,"imageUrl":"https://cashift-my.sharepoint.com/personal/dcc_cashift_onmicrosoft_com/_layouts/15/download.aspx?UniqueId=7dda8f1c-53a7-4bca-b462-b4a107839f8a&Translate=false&tempauth=v1.eyJzaXRlaWQiOiIwOTQ1MmNiYS00YWFjLTQxNjAtODkzMC0wMDVmZjcwY2U1ZDUiLCJhcHBfZGlzcGxheW5hbWUiOiJjbGVhcmFuY2VjZXJ0aWZpY2F0aW9uIiwiYXVkIjoiMDAwMDAwMDMtMDAwMC0wZmYxLWNlMDAtMDAwMDAwMDAwMDAwL2Nhc2hpZnQtbXkuc2hhcmVwb2ludC5jb21AMGI4NTJmZWEtMGVjNy00YjAwLWI3OGItYzNiYmQ2NDc5NzlhIiwiZXhwIjoiMTcyODU2MDAzOCJ9.CgoKBHNuaWQSAjY0EgsIyNr2zqLItD0QBRoLMjAuMjAuNDQuOTcqLFJ3bXNDRnQvWTVHbHVQZWl4UWhaekx1YW01dG5IZHBQaHBmWStXRWVzcGM9MJ4BOAFCEKFYgq69sACgENAeoTidha5KEGhhc2hlZHByb29mdG9rZW56ATG6AUBhbGxzaXRlcy53cml0ZSBhbGxmaWxlcy53cml0ZSBhbGxmaWxlcy5yZWFkIGFsbHNpdGVzLmZ1bGxjb250cm9swgFJZGMzN2JjODItOWY0ZC00MjJjLWE2MjgtMmRkZDBlMzY0ZGQ3QDBiODUyZmVhLTBlYzctNGIwMC1iNzhiLWMzYmJkNjQ3OTc5YcgBAQ.Bjjd6GauqBCeVIjbl-thn8nAh1xtmmaIfYYZjfp3qiQ&ApiVersion=2.0"},{"faceId":4,"faceName":"الوجه الرابع للصورة","imageId":4,"imageUrl":"https://cashift-my.sharepoint.com/personal/dcc_cashift_onmicrosoft_com/_layouts/15/download.aspx?UniqueId=7897a5d1-c8d2-46f6-8da1-c7877a839952&Translate=false&tempauth=v1.eyJzaXRlaWQiOiIwOTQ1MmNiYS00YWFjLTQxNjAtODkzMC0wMDVmZjcwY2U1ZDUiLCJhcHBfZGlzcGxheW5hbWUiOiJjbGVhcmFuY2VjZXJ0aWZpY2F0aW9uIiwiYXVkIjoiMDAwMDAwMDMtMDAwMC0wZmYxLWNlMDAtMDAwMDAwMDAwMDAwL2Nhc2hpZnQtbXkuc2hhcmVwb2ludC5jb21AMGI4NTJmZWEtMGVjNy00YjAwLWI3OGItYzNiYmQ2NDc5NzlhIiwiZXhwIjoiMTcyODU2MDAzOCJ9.CgoKBHNuaWQSAjY0EgsIzPiKz6LItD0QBRoLMjAuMjAuNDQuOTcqLGRkeHV1RFVDWGxjQk1iNzhQRUFURVR4Z2ZDb3ZGWUJQT2l6YUlpY3hqYTQ9MJ4BOAFCEKFYgq69wACgC9y3DC-QxUBKEGhhc2hlZHByb29mdG9rZW56ATG6AUBhbGxzaXRlcy53cml0ZSBhbGxmaWxlcy53cml0ZSBhbGxmaWxlcy5yZWFkIGFsbHNpdGVzLmZ1bGxjb250cm9swgFJZGMzN2JjODItOWY0ZC00MjJjLWE2MjgtMmRkZDBlMzY0ZGQ3QDBiODUyZmVhLTBlYzctNGIwMC1iNzhiLWMzYmJkNjQ3OTc5YcgBAQ.SYRlfLAwY3ro-uVeXQat0PMjpXmkoZGPFj1xWvLYJu4&ApiVersion=2.0"},{"faceId":5,"faceName":"الوجه الخامس للصورة","imageId":5,"imageUrl":"https://cashift-my.sharepoint.com/personal/dcc_cashift_onmicrosoft_com/_layouts/15/download.aspx?UniqueId=a946de33-4616-4151-bf5e-4be9fc8d5f46&Translate=false&tempauth=v1.eyJzaXRlaWQiOiIwOTQ1MmNiYS00YWFjLTQxNjAtODkzMC0wMDVmZjcwY2U1ZDUiLCJhcHBfZGlzcGxheW5hbWUiOiJjbGVhcmFuY2VjZXJ0aWZpY2F0aW9uIiwiYXVkIjoiMDAwMDAwMDMtMDAwMC0wZmYxLWNlMDAtMDAwMDAwMDAwMDAwL2Nhc2hpZnQtbXkuc2hhcmVwb2ludC5jb21AMGI4NTJmZWEtMGVjNy00YjAwLWI3OGItYzNiYmQ2NDc5NzlhIiwiZXhwIjoiMTcyODU2MDAzOCJ9.CgoKBHNuaWQSAjY0EgsIuMONz6LItD0QBRoLMjAuMjAuNDQuOTcqLHp1cWpKR084WnFtdkJMUFowTWpHTHlLRTRVZG5yQUVYVFRXckx6cndueVE9MJ4BOAFCEKFYgq694ACgPNoSkqHi5VhKEGhhc2hlZHByb29mdG9rZW56ATG6AUBhbGxzaXRlcy53cml0ZSBhbGxmaWxlcy53cml0ZSBhbGxmaWxlcy5yZWFkIGFsbHNpdGVzLmZ1bGxjb250cm9swgFJZGMzN2JjODItOWY0ZC00MjJjLWE2MjgtMmRkZDBlMzY0ZGQ3QDBiODUyZmVhLTBlYzctNGIwMC1iNzhiLWMzYmJkNjQ3OTc5YcgBAQ.OSS7el-BNfYBE9Udbv4kv8sk9nUEwNR6sRYMuiBh-5w&ApiVersion=2.0"}]
/// id : 1
/// vehicleCode : "790f51fe-712b-418a-9ac4-df1e1daabb51"
/// model : "Corella"
/// yearOfManufacture : 2015
/// plateNumber : "asd 1"
/// licenseNumber : "123456"
/// licenseExpiryDate : "2025-05-01T00:00:00"
/// specifications : "Toyota Corella 2015"
/// vehicleImage : "https://cashift-my.sharepoint.com/personal/dcc_cashift_onmicrosoft_com/_layouts/15/download.aspx?UniqueId=f0728c10-2d8e-46c3-8815-f9243fa427f5&Translate=false&tempauth=v1.eyJzaXRlaWQiOiIwOTQ1MmNiYS00YWFjLTQxNjAtODkzMC0wMDVmZjcwY2U1ZDUiLCJhcHBfZGlzcGxheW5hbWUiOiJjbGVhcmFuY2VjZXJ0aWZpY2F0aW9uIiwiYXVkIjoiMDAwMDAwMDMtMDAwMC0wZmYxLWNlMDAtMDAwMDAwMDAwMDAwL2Nhc2hpZnQtbXkuc2hhcmVwb2ludC5jb21AMGI4NTJmZWEtMGVjNy00YjAwLWI3OGItYzNiYmQ2NDc5NzlhIiwiZXhwIjoiMTcyODU2MDAzOSJ9.CgoKBHNuaWQSAjY0EgsI6qSp16LItD0QBRoLMjAuMjAuNDQuOTcqLGZsci9jMUpwd21QNDRHK2diUUlJM2hZdkJaZW9NYTU2UElPODcyVmhUNEU9MJ4BOAFCEKFYgq7zwACgC9y7-sUS5xRKEGhhc2hlZHByb29mdG9rZW56ATG6AUBhbGxzaXRlcy53cml0ZSBhbGxmaWxlcy53cml0ZSBhbGxmaWxlcy5yZWFkIGFsbHNpdGVzLmZ1bGxjb250cm9swgFJZGMzN2JjODItOWY0ZC00MjJjLWE2MjgtMmRkZDBlMzY0ZGQ3QDBiODUyZmVhLTBlYzctNGIwMC1iNzhiLWMzYmJkNjQ3OTc5YcgBAQ.wcfuGo8qBRyz2tJ4n2EdZciMj399OgkX-nn6udGWiSQ&ApiVersion=2.0"
/// licenseImage : "jj"
/// vehicleBrandName : "تويوتا"
/// vehicleBrandId : 3
/// companyName : "شركة تضاريس نجد"
/// companyId : 21
/// projectName : "سينومي - النخيل مول الدمام"
/// projectId : 68
/// vehicleColorName : "بيضاء"
/// vehicleColorId : 1

class VehicleDetails {
  VehicleDetails({
      this.vehicleListOfImages, 
      this.id, 
      this.vehicleCode, 
      this.model, 
      this.yearOfManufacture, 
      this.plateNumber, 
      this.licenseNumber, 
      this.licenseExpiryDate, 
      this.specifications, 
      this.vehicleImage, 
      this.licenseImage, 
      this.vehicleBrandName, 
      this.vehicleBrandId, 
      this.companyName, 
      this.companyId, 
      this.projectName, 
      this.projectId, 
      this.vehicleColorName, 
      this.custodies,
      this.vehicleColorId,});

  List<VehicleListOfImages>? vehicleListOfImages;
  int? id;
  String? vehicleCode;
  String? model;
  int? yearOfManufacture;
  String? plateNumber;
  String? licenseNumber;
  String? licenseExpiryDate;
  String? specifications;
  String? vehicleImage;
  String? licenseImage;
  String? vehicleBrandName;
  int? vehicleBrandId;
  String? companyName;
  int? companyId;
  String? projectName;
  int? projectId;
  String? vehicleColorName;
  List<CustodyVehicle> ? custodies;
  int? vehicleColorId;
  factory VehicleDetails.fromDto(VehicleDetailsDto json) {
    return VehicleDetails(
        id: json.id,
        vehicleCode: json.vehicleCode,
        model: json.model,
      custodies: json.custodies,
        yearOfManufacture: json.yearOfManufacture,
        plateNumber: json.plateNumber,
        licenseNumber: json.licenseNumber,
        licenseExpiryDate: json.licenseExpiryDate,
        specifications: json.specifications,
        vehicleImage: json.vehicleImage,
        companyName: json.companyName,
        vehicleBrandName: json.vehicleBrandName,
        vehicleBrandId: json.vehicleBrandId,
        companyId: json.companyId,
        projectName: json.projectName,
        projectId: json.projectId,
        vehicleColorName: json.vehicleColorName,
      licenseImage: json.licenseImage,
        vehicleColorId: json.vehicleColorId,
      vehicleListOfImages: json.vehicleListOfImages?.map((e) => VehicleListOfImages.fromDto(e)).toList(),
    );
  }


  List<String> get custodyVehicleNames => custodies?.map((e) => e.name ?? "").toList() ?? [];

}