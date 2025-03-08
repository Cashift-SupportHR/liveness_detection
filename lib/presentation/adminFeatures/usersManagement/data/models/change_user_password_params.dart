import 'package:json_annotation/json_annotation.dart'; 

part 'change_user_password_params.g.dart'; 

@JsonSerializable(ignoreUnannotated: true)
class ChangeUserPasswordParams {
  @JsonKey(name: 'email')
  String? email;
  @JsonKey(name: 'password')
  String? password;
  @JsonKey(name: 'confirmPassword')
  String? confirmPassword;

  ChangeUserPasswordParams({this.email, this.password, this.confirmPassword});

   factory ChangeUserPasswordParams.fromJson(Map<String, dynamic> json) => _$ChangeUserPasswordParamsFromJson(json);

   Map<String, dynamic> toJson() => _$ChangeUserPasswordParamsToJson(this);
}

