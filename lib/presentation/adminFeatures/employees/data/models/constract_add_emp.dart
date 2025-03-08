import '../../domain/entities/EmpChasifterData.dart';

class  ConstractAddEmp{

final  int?  empId;
final  EmpChasifter?  empChasifter;
final  bool  isEdit;

  ConstractAddEmp({  this.empId,   this.empChasifter, required this.isEdit});

}