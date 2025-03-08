
import '../../data/models/popup_employment_management_dto.dart';

class PopupEmploymentManagement {
  BlockDto? blockDto;
  FaceDto? faceDto;
  UpdateDto? updateDto;

  PopupEmploymentManagement({this.blockDto, this.faceDto, this.updateDto});

   factory PopupEmploymentManagement.fromDto(PopupEmploymentManagementDto json){
     return PopupEmploymentManagement(
       blockDto: json.blockDto,
       faceDto: json.faceDto,
       updateDto: json.updateDto,
     );
   }
}
