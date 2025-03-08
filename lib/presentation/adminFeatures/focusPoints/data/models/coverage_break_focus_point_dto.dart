import 'package:json_annotation/json_annotation.dart'; 

part 'coverage_break_focus_point_dto.g.dart'; 

@JsonSerializable(ignoreUnannotated: true)
class CoverageBreakFocusPointDto {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;

  CoverageBreakFocusPointDto({this.id, this.name});

   factory CoverageBreakFocusPointDto.fromJson(Map<String, dynamic> json) => _$CoverageBreakFocusPointDtoFromJson(json);

   Map<String, dynamic> toJson() => _$CoverageBreakFocusPointDtoToJson(this);
}

