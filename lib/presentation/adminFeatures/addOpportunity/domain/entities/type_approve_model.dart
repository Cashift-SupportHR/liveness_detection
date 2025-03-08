import '../../data/models/type_approve_model_dto.dart';

class TypeApproveModel {
  String? description;
  List<TypeApprove>? typeApprove;


  TypeApproveModel({
    required this.description,
    required Map<String , dynamic> jsonMap,
    required this.typeApprove
  });

  factory TypeApproveModel.fromDto(TypeApproveModelDto dto) {
    return TypeApproveModel(
      description: dto.description,
      typeApprove: dto.typeApprove!.map((e) => TypeApprove.fromDto(e)).toList(),
      jsonMap: dto.toJson(),
    );
  }

}

class TypeApprove {
  String? name;
  bool? type;
  String? description;

  TypeApprove({
    this.name,
    this.type,
    this.description,
  });

  factory TypeApprove.fromDto(TypeApproveDto dto) {
    return TypeApprove(
      name: dto.name,
      type: dto.type,
      description: dto.description,
    );
  }
}