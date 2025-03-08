import 'package:shiftapp/presentation/adminFeatures/vehicles/data/models/vehicle_details_dto.dart';

/// faceId : 1
/// faceName : "الوجه الأول للصورة"
/// imageId : 1
/// imageUrl : "https://cashift-my.sharepoint.com/personal/dcc_cashift_onmicrosoft_com/_layouts/15/download.aspx?UniqueId=f0728c10-2d8e-46c3-8815-f9243fa427f5&Translate=false&tempauth=v1.eyJzaXRlaWQiOiIwOTQ1MmNiYS00YWFjLTQxNjAtODkzMC0wMDVmZjcwY2U1ZDUiLCJhcHBfZGlzcGxheW5hbWUiOiJjbGVhcmFuY2VjZXJ0aWZpY2F0aW9uIiwiYXVkIjoiMDAwMDAwMDMtMDAwMC0wZmYxLWNlMDAtMDAwMDAwMDAwMDAwL2Nhc2hpZnQtbXkuc2hhcmVwb2ludC5jb21AMGI4NTJmZWEtMGVjNy00YjAwLWI3OGItYzNiYmQ2NDc5NzlhIiwiZXhwIjoiMTcyODU2MDAzOCJ9.CgoKBHNuaWQSAjY0EgsI6PySz6LItD0QBRoLMjAuMjAuNDQuOTcqLGZsci9jMUpwd21QNDRHK2diUUlJM2hZdkJaZW9NYTU2UElPODcyVmhUNEU9MJ4BOAFCEKFYgq6-MACgPNod4fXmGuZKEGhhc2hlZHByb29mdG9rZW56ATG6AUBhbGxzaXRlcy53cml0ZSBhbGxmaWxlcy53cml0ZSBhbGxmaWxlcy5yZWFkIGFsbHNpdGVzLmZ1bGxjb250cm9swgFJZGMzN2JjODItOWY0ZC00MjJjLWE2MjgtMmRkZDBlMzY0ZGQ3QDBiODUyZmVhLTBlYzctNGIwMC1iNzhiLWMzYmJkNjQ3OTc5YcgBAQ.vARYoCXDA6DgRuv0wKTBmuurE8Eq5gzdaTRAULGtZZ8&ApiVersion=2.0"

class VehicleListOfImages {
  VehicleListOfImages({
      this.faceId, 
      this.faceName, 
      this.imageId, 
      this.imageUrl,});


  int? faceId;
  String? faceName;
  int? imageId;
  String? imageUrl;

  factory VehicleListOfImages.fromDto(VehicleListOfImage json) {
    return VehicleListOfImages(
       faceId: json.faceId,
      faceName: json.faceName,
      imageId: json.imageId,
      imageUrl: json.imageUrl,
    );
  }

}