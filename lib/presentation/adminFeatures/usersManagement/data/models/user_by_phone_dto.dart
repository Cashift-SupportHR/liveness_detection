import 'package:json_annotation/json_annotation.dart'; 

part 'user_by_phone_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class UserByPhoneDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'email')
  String? email;
  @JsonKey(name: 'phoneNumber')
  String? phoneNumber;
  @JsonKey(name: 'idNumber')
  String? idNumber;
  @JsonKey(name: 'password')
  String? password;

  UserByPhoneDto({this.id, this.name, this.email, this.phoneNumber, this.idNumber, this.password});

   factory UserByPhoneDto.fromJson(Map<String, dynamic> json) => _$UserByPhoneDtoFromJson(json);

   Map<String, dynamic> toJson() => _$UserByPhoneDtoToJson(this);
}

