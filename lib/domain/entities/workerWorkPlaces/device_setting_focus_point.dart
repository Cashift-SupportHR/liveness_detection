import '../../../data/models/workerWorkPlaces/device_setting_focus_point_dto.dart';

class DeviceSettingFocusPoint {
  String? alertSetting;
  String? dangerSetting;
  String? successSetting;

  DeviceSettingFocusPoint({
      this.alertSetting, 
      this.dangerSetting, 
      this.successSetting,});

  factory DeviceSettingFocusPoint.fromDto(DeviceSettingFocusPointDto json) {
    return DeviceSettingFocusPoint(
      alertSetting: json.alertSetting,
      dangerSetting: json.dangerSetting,
      successSetting: json.successSetting,
    );
  }

}