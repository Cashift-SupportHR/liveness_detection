import 'dart:io';

import 'package:geolocator/geolocator.dart';
import 'package:location/location.dart';

import '../../appliedoffers/pages/qrcode_screen.dart';

class AttendanceParams{
 final QrCode ? qr ;
 File ? face;
 final int? presentId;
 LocationData? position;



 AttendanceParams({ required this.qr,this.face, this.presentId,this.position});
}