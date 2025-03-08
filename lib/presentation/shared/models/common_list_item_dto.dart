
class CommonListItemDto {
  int? id;
  int? employeeId;
  String? name;
  String? icon;
  String? code;

  CommonListItemDto({this.id, this.employeeId, this.name, this.icon, this.code});

   factory CommonListItemDto.fromJson(Map<String, dynamic> json) {
    return CommonListItemDto(
      id: json['id'],
      employeeId: json['employeeId'],
      name: json['name'],
      icon: json['icon'],
      code: json['code'],
    );}

    Map<String, dynamic> toJson() => {
      'id': id,
      'name': name,
      'employeeId': employeeId,
      'icon': icon,
      'code': code,
    };
}

