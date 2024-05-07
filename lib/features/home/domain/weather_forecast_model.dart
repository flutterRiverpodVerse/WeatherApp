// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_forecast_model.freezed.dart';
part 'weather_forecast_model.g.dart';

WeatherForecastModel weatherForecastModelFromJson(String str) =>
    WeatherForecastModel.fromJson(json.decode(str));

String weatherForecastModelToJson(WeatherForecastModel data) =>
    json.encode(data.toJson());

@freezed
class WeatherForecastModel with _$WeatherForecastModel {
  const factory WeatherForecastModel({
    int? dt,
    WeatherForecastMain? main,
    List<WeatherForecastDesc>? weather,
    WeatherForecastClouds? clouds,
    WeatherForecastWind? wind,
    int? visibility,
    int? pop,
    WeatherForecastSys? sys,
    DateTime? dtTxt,
    String? name,
    WeatherForecastCoordinates? coord,
  }) = _WeatherForecastModel;

  factory WeatherForecastModel.empty() => const WeatherForecastModel();

  factory WeatherForecastModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherForecastModelFromJson(json);
}

@freezed
class WeatherForecastMain with _$WeatherForecastMain {
  const factory WeatherForecastMain({
    double? temp,
    @JsonKey(name: "feels_like") double? feelsLike,
    @JsonKey(name: "temp_min") double? tempMin,
    @JsonKey(name: "temp_max") double? tempMax,
    int? pressure,
    @JsonKey(name: "sea_level") int? seaLevel,
    @JsonKey(name: "grnd_level") int? grndLevel,
    int? humidity,
    double? tempKf,
  }) = _WeatherForecastMain;

  factory WeatherForecastMain.fromJson(Map<String, dynamic> json) =>
      _$WeatherForecastMainFromJson(json);
}

@freezed
class WeatherForecastDesc with _$WeatherForecastDesc {
  const factory WeatherForecastDesc({
    int? id,
    String? main,
    String? description,
    String? icon,
  }) = _WeatherForecastDesc;

  factory WeatherForecastDesc.fromJson(Map<String, dynamic> json) =>
      _$WeatherForecastDescFromJson(json);
}

@freezed
class WeatherForecastClouds with _$WeatherForecastClouds {
  const factory WeatherForecastClouds({
    int? all,
  }) = _WeatherForecastClouds;

  factory WeatherForecastClouds.fromJson(Map<String, dynamic> json) =>
      _$WeatherForecastCloudsFromJson(json);
}

@freezed
class WeatherForecastCoordinates with _$WeatherForecastCoordinates {
  const factory WeatherForecastCoordinates({
    double? lat,
    double? lon,
  }) = _WeatherForecastCoordinates;

  factory WeatherForecastCoordinates.fromJson(Map<String, dynamic> json) =>
      _$WeatherForecastCoordinatesFromJson(json);
}

@freezed
class WeatherForecastSys with _$WeatherForecastSys {
  const factory WeatherForecastSys({
    String? country,
  }) = _WeatherForecastSys;

  factory WeatherForecastSys.fromJson(Map<String, dynamic> json) =>
      _$WeatherForecastSysFromJson(json);
}

@freezed
class WeatherForecastWind with _$WeatherForecastWind {
  const factory WeatherForecastWind({
    double? speed,
    int? deg,
    double? gust,
  }) = _WeatherForecastWind;

  factory WeatherForecastWind.fromJson(Map<String, dynamic> json) =>
      _$WeatherForecastWindFromJson(json);
}
