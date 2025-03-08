import 'package:json_annotation/json_annotation.dart';
import 'package:shiftapp/presentation/presentationUser/violations/data/models/violation_user_dto.dart';

part 'violations_user_data_dto.g.dart';

@JsonSerializable(ignoreUnannotated: true)
class ViolationsUserDataDto {
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'apply')
  List<ViolationUserDto>? apply;

  ViolationsUserDataDto({this.description, this.apply});

   factory ViolationsUserDataDto.fromJson(Map<String, dynamic> json) => _$ViolationsUserDataDtoFromJson(json);

   Map<String, dynamic> toJson() => _$ViolationsUserDataDtoToJson(this);
}

