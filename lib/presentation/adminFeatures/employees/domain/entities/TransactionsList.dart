import '../../data/models/emp_attendance_dto.dart';

class TransactionsList {
  TransactionsList({
      this.vactionType, 
      this.fullDates, 
      this.shiftName,
      this.checkIn,
      this.projectName,
      this.checkOut,});


  String? vactionType;
  String? fullDates;
  String? shiftName;
  String? checkIn;
  String? projectName;
  String? checkOut;
  factory TransactionsList.fromDto(TransactionsListDto json) {
    return TransactionsList(
        vactionType: json.vactionType,
        fullDates: json.fullDates,
      shiftName: json.shiftName,
      projectName: json.projectName,
      checkIn: json.checkIn,
      checkOut: json.checkOut,
    );
  }

}