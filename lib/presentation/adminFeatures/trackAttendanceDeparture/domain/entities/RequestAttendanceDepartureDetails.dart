import '../../data/models/request_attendance_departure_details_dto.dart';
import 'TrackFaceRecognitionDetailsList.dart';

class RequestAttendanceDepartureDetails {
  RequestAttendanceDepartureDetails({
      this.freelancerProfileImage, 
      this.freelancerName, 
      this.freelancerPhoneNumber, 
      this.freelancerIdNumber, 
      this.freelancerNationality, 
      this.trackFaceRecognitionDetailsList,});


   String? freelancerProfileImage;
  String? freelancerName;
  String? freelancerPhoneNumber;
  String? freelancerIdNumber;
  String? freelancerNationality;
  List<TrackFaceRecognitionDetailsList>? trackFaceRecognitionDetailsList;


  factory RequestAttendanceDepartureDetails.fromDto(
      RequestAttendanceDepartureDetailsDto json) =>
      RequestAttendanceDepartureDetails(
        freelancerProfileImage: json.freelancerProfileImage,
        freelancerName: json.freelancerName,
        freelancerPhoneNumber: json.freelancerPhoneNumber,
        freelancerIdNumber: json.freelancerIdNumber,
        freelancerNationality: json.freelancerNationality,
          trackFaceRecognitionDetailsList:  json.trackFaceRecognitionDetailsList?.map((e) => TrackFaceRecognitionDetailsList.fromDto(e)).toList(),
      );

}