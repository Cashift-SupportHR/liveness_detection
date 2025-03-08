import 'package:shiftapp/data/models/attendance/attendance_config_dto.dart';
import 'package:shiftapp/domain/entities/shift/applied_offer.dart';

 import 'attendance_model.dart';



class RegisterAttendanceRequestCashift extends RegisterAttendanceRequest{
  final AppliedOffer cashift ;

  RegisterAttendanceRequestCashift({ required this.cashift});


  @override
  AttendanceConfigDto attendanceConfigDto() {
    return cashift.attendanceConfigDto??AttendanceConfigDto();
  }

  @override
  bool allowToTrack() {
    return cashift.isAllowToTrack==true;
  }
}
