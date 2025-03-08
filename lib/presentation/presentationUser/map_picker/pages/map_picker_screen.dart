import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:shiftapp/presentation/presentationUser/resources/colors.dart';
import 'package:shiftapp/presentation/presentationUser/resources/constants.dart';
import 'package:shiftapp/presentation/shared/components/app_cupertino_button.dart';

import '../../../shared/components/base_stateless_widget.dart';
import '../../../shared/components/decorations/decorations.dart';
import '../../common/common_state.dart';
import '../widgets/map_picker_item.dart';
import '../widgets/map_prediction.dart';
import '../widgets/map_widget_picker.dart';

class MapPickerScreen extends BaseStatelessWidget {
  final StreamStateInitial<List<MapPrediction>?> predictionsSearchStream;
  final StreamStateInitial<MapPickerItem?> placeDetailsStream;
  final Function(String) onFetchAutoComplete;
  final Function(String) onFetchPlaceDetails;

  MapPickerScreen({Key? key,
    required this.predictionsSearchStream,
    required this.onFetchAutoComplete,
    required this.placeDetailsStream,
    required this.onFetchPlaceDetails})
      : super(key: key);

  GoogleMapController? mapController;

  MapPickerItem locationData = MapPickerItem();

  StreamStateInitial<LatLng?> latLngSearchStream = StreamStateInitial();

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        MapWidgetPicker(
        predictionsSearchStream: predictionsSearchStream,
          latLngSearchStream: latLngSearchStream,
          onMapCreated: (GoogleMapController controller) {
            mapController = controller;

          },
          mapController: mapController,
          onTap: (LatLng latLng) {
            onTapPicker(latLng);
          },
          onCreatedLocation: (LatLng latLng) {
            onTapPicker(latLng);
          },
          onSearch: (String value) {
            onFetchAutoComplete(value);
          },
          onSelectPlace: (MapPrediction prediction) {
            onFetchPlaceDetails(prediction.placeId ?? '');
          },
        ),

        StreamBuilder<MapPickerItem?>(
            stream: placeDetailsStream.stream,
            builder: (context, snapshot) {
              onZoom(snapshot.data);
              locationData = snapshot.data ?? MapPickerItem();
              return snapshot.data == null
                  ? SizedBox.shrink()
                  :
              Container(
                height: (snapshot.data!.formattedAddress!.isEmpty) ? 100 : 200,
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.symmetric(
                    vertical: (snapshot.data!.formattedAddress!.isEmpty) ?0 : 25, horizontal: 16),
                decoration: Decorations.decorationTabsOnlyTop(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(snapshot.data?.formattedAddress ?? '',
                        style: kTextMedium.copyWith(
                            fontSize: 16, color: kPrimary)),
                    //  Spacer(),
                    AppCupertinoButton(
                      text: strings.save_button,
                      radius: BorderRadius.circular(4),
                      margin: EdgeInsets.symmetric(
                          horizontal: 16, vertical: (snapshot.data!.formattedAddress!.isEmpty) ? 10 : 16),
                      onPressed: () {
                        print('onPressed ${locationData.toJson()}');
                        Navigator.pop(context, locationData);
                      },
                    ),
                  ],
                ),
              );
            }),
      ],
    );
  }

  onTapPicker(LatLng latLng) {
    print('onSelectPlace ${latLng.toJson()}');
    placeDetailsStream.setData(
      MapPickerItem(
        formattedAddress: '${latLng.latitude}, ${latLng.longitude}',
        geometry: MapPickerGeometry(
          location: MapPickerLocation(
            lat: latLng.latitude,
            lng: latLng.longitude,
          ),
        ),
      ),
    );
  }

  onZoom(MapPickerItem? item){
    if(item == null) return;
    print('onZoom ${item.toJson()}' );
    LatLng latLng = LatLng(
      double.parse(item.geometry?.location?.lat?.toString() ?? '0.0'),
      double.parse(item.geometry?.location?.lng?.toString() ?? '0.0'),
    );
    latLngSearchStream.setData(latLng);
    mapController?.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: latLng,
          zoom: 18,
        ),
      ),
    );
  }
}