// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_model.freezed.dart';
part 'weather_model.g.dart';

WeatherModel weatherModelFromJson(String str) =>
    WeatherModel.fromJson(json.decode(str));

String weatherModelToJson(WeatherModel data) => json.encode(data.toJson());

@freezed
class WeatherModel with _$WeatherModel {
  const factory WeatherModel({
    Coordinates? coord,
    List<WeatherDesc>? weather,
    String? base,
    Main? main,
    int? visibility,
    Wind? wind,
    Rain? rain,
    Snow? snow,
    Clouds? clouds,
    int? dt,
    Sys? sys,
    int? timezone,
    int? id,
    String? name,
    int? cod,
  }) = _WeatherModel;

  factory WeatherModel.empty() => const WeatherModel();

  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);
}

@freezed
class Coordinates with _$Coordinates {
  const factory Coordinates({
    double? lon,
    double? lat,
  }) = _Coordinates;

  factory Coordinates.fromJson(Map<String, dynamic> json) =>
      _$CoordinatesFromJson(json);
}

@freezed
class WeatherDesc with _$WeatherDesc {
  const factory WeatherDesc({
    int? id,
    String? main,
    String? description,
    String? icon,
  }) = _WeatherDesc;

  factory WeatherDesc.fromJson(Map<String, dynamic> json) =>
      _$WeatherDescFromJson(json);
}

@freezed
class Main with _$Main {
  const factory Main({
    double? temp,
    @JsonKey(name: "feels_like") double? feelsLike,
    @JsonKey(name: "temp_min") double? tempMin,
    @JsonKey(name: "temp_max") double? tempMax,
    int? pressure,
    int? humidity,
    @JsonKey(name: "sea_level") num? seaLevel,
    @JsonKey(name: "grnd_level") num? grndLevel,
  }) = _Main;

  factory Main.fromJson(Map<String, dynamic> json) => _$MainFromJson(json);
}

@freezed
class Wind with _$Wind {
  const factory Wind({
    double? speed,
    int? deg,
    double? gust,
  }) = _Wind;

  factory Wind.fromJson(Map<String, dynamic> json) => _$WindFromJson(json);
}

@freezed
class Rain with _$Rain {
  const factory Rain({
    num? the1H,
    num? the3H,
  }) = _Rain;

  factory Rain.fromJson(Map<String, dynamic> json) => _$RainFromJson(json);
}

@freezed
class Snow with _$Snow {
  const factory Snow({
    num? the1H,
    num? the3H,
  }) = _Snow;

  factory Snow.fromJson(Map<String, dynamic> json) => _$SnowFromJson(json);
}

@freezed
class Clouds with _$Clouds {
  const factory Clouds({
    int? all,
  }) = _Clouds;

  factory Clouds.fromJson(Map<String, dynamic> json) => _$CloudsFromJson(json);
}

@freezed
class Sys with _$Sys {
  const factory Sys({
    int? type,
    int? id,
    String? country,
    int? sunrise,
    int? sunset,
  }) = _Sys;

  factory Sys.fromJson(Map<String, dynamic> json) => _$SysFromJson(json);
}
