import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../presentationUser/map_picker/pages/map_picker_page.dart';
import '../../../presentationUser/map_picker/widgets/map_picker_item.dart';


Future<MapPickerItem> navigatorMapPicker(BuildContext context, {LatLng? displayLocation}) async {
  MapPickerItem result = await Navigator.of(context).push(MaterialPageRoute(
       builder: (context) =>
           MapPickerPage(
           //  displayLocation: displayLocation,
           )));
   return result;
 }
