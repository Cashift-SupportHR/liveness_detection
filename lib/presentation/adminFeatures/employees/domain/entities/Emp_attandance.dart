 import 'package:shiftapp/presentation/adminFeatures/employees/domain/entities/TransactionsList.dart';

import '../../data/models/emp_attendance_dto.dart';

class EmpAttandance {
  EmpAttandance({
      this.scheduleEmpWorkId, 
      this.scheduleEmpWorkName, 
      this.scheduleEmpWorkPhoneNumber, 
      this.scheduleEmpWorkProfileIamge, 
      this.status, 
      this.projectId, 
      this.projectName, 
      this.shiftId, 
      this.shiftName, 
      this.paymentPeriodTypeId, 
      this.paymentPeriodTypeName, 
      this.transactionsList,});


  int? scheduleEmpWorkId;
  String? scheduleEmpWorkName;
  String? scheduleEmpWorkPhoneNumber;
  String? scheduleEmpWorkProfileIamge;
  String? status;
  int? projectId;
  String? projectName;
  int? shiftId;
  String? shiftName;
  int? paymentPeriodTypeId;
  String? paymentPeriodTypeName;
  List<TransactionsList>? transactionsList;

  factory EmpAttandance.fromDto(EmpAttendanceDto json) {
    return EmpAttandance(
      scheduleEmpWorkId: json.scheduleEmpWorkId,
      scheduleEmpWorkName: json.scheduleEmpWorkName,
      scheduleEmpWorkPhoneNumber: json.scheduleEmpWorkPhoneNumber,
      scheduleEmpWorkProfileIamge: json.scheduleEmpWorkProfileIamge,
      status: json.status,
      projectId: json.projectId,
      shiftId: json.shiftId,
      shiftName: json.shiftName,
      paymentPeriodTypeId: json.paymentPeriodTypeId,
      paymentPeriodTypeName: json.paymentPeriodTypeName,
      transactionsList: json.transactionsList?.map((e) => TransactionsList.fromDto(e)).toList(),

    );
  }

}