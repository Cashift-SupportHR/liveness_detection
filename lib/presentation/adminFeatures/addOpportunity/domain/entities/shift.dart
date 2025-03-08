import '../../data/models/shift_dto.dart';

class Shift {
  String? description;
  List<ListShift>? listShift;


  Shift({
    required this.description,
    required this.listShift
  });

  factory Shift.fromDto(ShiftDto dto) {
    return Shift(
      description: dto.description,
      listShift: dto.listShift!.map((e) => ListShift.fromDto(e)).toList(),
    );
  }

}

class ListShift {
  int? id;
  String? shiftName;
  int? companyId;
  int? projectId;
  String? startShift;
  int? hoursCount;
  int? jobId;

  ListShift({
    this.id,
    this.shiftName,
    this.companyId,
    this.projectId,
    this.startShift,
    this.hoursCount,
    this.jobId
  });

  factory ListShift.fromDto(ListShiftDto dto) {
    return ListShift(
      id: dto.id,
      shiftName: dto.shiftName,
      companyId: dto.companyId,
      projectId: dto.projectId,
      startShift: dto.startShift,
      hoursCount: dto.hoursCount,
      jobId: dto.jobId,
    );
  }
}