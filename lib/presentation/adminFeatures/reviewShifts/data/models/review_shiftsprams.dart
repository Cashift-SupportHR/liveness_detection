import 'package:json_annotation/json_annotation.dart'; 

part 'review_shiftsprams.g.dart'; 

@JsonSerializable(ignoreUnannotated: false)
class ReviewShiftsprams {
  @JsonKey(name: 'statusId')
  int? statusId;
  @JsonKey(name: 'pageNumber')
  int? pageNumber;
  @JsonKey(name: 'pageSize')
  int? pageSize;
  @JsonKey(name: 'searchString')
  String? searchString;

  ReviewShiftsprams({this.statusId, this.pageNumber, this.pageSize, this.searchString});

   factory ReviewShiftsprams.fromJson(Map<String, dynamic> json) => _$ReviewShiftspramsFromJson(json);

   Map<String, dynamic> toJson() => _$ReviewShiftspramsToJson(this);
}

