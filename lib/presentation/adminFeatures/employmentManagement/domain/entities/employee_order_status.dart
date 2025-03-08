import '../../../../shared/models/common_list_item.dart';
import '../../../projectsManagement/domain/entities/working_period.dart';
import '../../data/models/employee_order_status_dto.dart';

class EmployeeOrderStatus{
  int? id;
  int? isAccept;
  String? description;
  String? descriptionConnect;
  bool? isAllow;
  List<CommonListItem>? listProject;
  List<WorkingPeriod>? listShift;
  int? isAcceptedForAllProject;
  int? isAcceptedForAllShift;
  bool? isShowDescription;
  int? successAprovedLevel;

  EmployeeOrderStatus({this.id, this.isAccept, this.description, this.descriptionConnect, this.isAllow, this.listProject, this.listShift, this.isAcceptedForAllProject, this.isAcceptedForAllShift, this.successAprovedLevel, this.isShowDescription});

   factory EmployeeOrderStatus.fromDto(EmployeeOrderStatusDto json){
     return EmployeeOrderStatus(
        id: json.id,
        isAccept: json.isAccept,
        description: json.description,
        descriptionConnect: json.descriptionConnect,
        isAllow: json.isAllow,
       listProject: json.listProject?.map((e) => CommonListItem.fromDto(e)).toList() ?? [],
       listShift: json.listShift?.map((e) => WorkingPeriod.fromDto(e)).toList() ?? [],
        isAcceptedForAllProject: json.isAcceptedForAllProject,
        isAcceptedForAllShift: json.isAcceptedForAllShift,
        successAprovedLevel: json.successAprovedLevel,
         isShowDescription: json.isShowDescription == 1 ? true : false,
     );
   }
}

