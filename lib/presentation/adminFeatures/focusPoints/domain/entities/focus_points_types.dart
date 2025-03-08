
import '../../data/models/focus_points_types_dto.dart';

class FocusPointsTypes {
  int? order;
  String? focusPointTypeName;
  int? focusPointTypeCount;
  String? imageFocusPointsType;
  List<FreelanceApply>? freelanceApply;

  FocusPointsTypes({this.order, this.focusPointTypeName, this.focusPointTypeCount, this.imageFocusPointsType, this.freelanceApply});

   factory FocusPointsTypes.fromJson(FocusPointsTypesDto json){
     return FocusPointsTypes(
       order: json.order,
       focusPointTypeName: json.focusPointTypeName,
       focusPointTypeCount: json.focusPointTypeCount,
       imageFocusPointsType: json.imageFocusPointsType,
       freelanceApply: json.freelanceApply,
     );
   }
}

