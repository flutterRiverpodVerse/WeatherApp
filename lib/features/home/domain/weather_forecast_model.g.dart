// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_forecast_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherForecastModelImpl _$$WeatherForecastModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WeatherForecastModelImpl(
      dt: (json['dt'] as num?)?.toInt(),
      main: json['main'] == null
          ? null
          : WeatherForecastMain.fromJson(json['main'] as Map<String, dynamic>),
      weather: (json['weather'] as List<dynamic>?)
          ?.map((e) => WeatherForecastDesc.fromJson(e as Map<String, dynamic>))
          .toList(),
      clouds: json['clouds'] == null
          ? null
          : WeatherForecastClouds.fromJson(
              json['clouds'] as Map<String, dynamic>),
      wind: json['wind'] == null
          ? null
          : WeatherForecastWind.fromJson(json['wind'] as Map<String, dynamic>),
      visibility: (json['visibility'] as num?)?.toInt(),
      pop: (json['pop'] as num?)?.toInt(),
      sys: json['sys'] == null
          ? null
          : WeatherForecastSys.fromJson(json['sys'] as Map<String, dynamic>),
      dtTxt: json['dtTxt'] == null
          ? null
          : DateTime.parse(json['dtTxt'] as String),
      name: json['name'] as String?,
      coord: json['coord'] == null
          ? null
          : WeatherForecastCoordinates.fromJson(
              json['coord'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WeatherForecastModelImplToJson(
        _$WeatherForecastModelImpl instance) =>
    <String, dynamic>{
      'dt': instance.dt,
      'main': instance.main,
      'weather': instance.weather,
      'clouds': instance.clouds,
      'wind': instance.wind,
      'visibility': instance.visibility,
      'pop': instance.pop,
      'sys': instance.sys,
      'dtTxt': instance.dtTxt?.toIso8601String(),
      'name': instance.name,
      'coord': instance.coord,
    };

_$WeatherForecastMainImpl _$$WeatherForecastMainImplFromJson(
        Map<String, dynamic> json) =>
    _$WeatherForecastMainImpl(
      temp: (json['temp'] as num?)?.toDouble(),
      feelsLike: (json['feels_like'] as num?)?.toDouble(),
      tempMin: (json['temp_min'] as num?)?.toDouble(),
      tempMax: (json['temp_max'] as num?)?.toDouble(),
      pressure: (json['pressure'] as num?)?.toInt(),
      seaLevel: (json['sea_level'] as num?)?.toInt(),
      grndLevel: (json['grnd_level'] as num?)?.toInt(),
      humidity: (json['humidity'] as num?)?.toInt(),
      tempKf: (json['tempKf'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$WeatherForecastMainImplToJson(
        _$WeatherForecastMainImpl instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'feels_like': instance.feelsLike,
      'temp_min': instance.tempMin,
      'temp_max': instance.tempMax,
      'pressure': instance.pressure,
      'sea_level': instance.seaLevel,
      'grnd_level': instance.grndLevel,
      'humidity': instance.humidity,
      'tempKf': instance.tempKf,
    };

_$WeatherForecastDescImpl _$$WeatherForecastDescImplFromJson(
        Map<String, dynamic> json) =>
    _$WeatherForecastDescImpl(
      id: (json['id'] as num?)?.toInt(),
      main: json['main'] as String?,
      description: json['description'] as String?,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$$WeatherForecastDescImplToJson(
        _$WeatherForecastDescImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'main': instance.main,
      'description': instance.description,
      'icon': instance.icon,
    };

_$WeatherForecastCloudsImpl _$$WeatherForecastCloudsImplFromJson(
        Map<String, dynamic> json) =>
    _$WeatherForecastCloudsImpl(
      all: (json['all'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$WeatherForecastCloudsImplToJson(
        _$WeatherForecastCloudsImpl instance) =>
    <String, dynamic>{
      'all': instance.all,
    };

_$WeatherForecastCoordinatesImpl _$$WeatherForecastCoordinatesImplFromJson(
        Map<String, dynamic> json) =>
    _$WeatherForecastCoordinatesImpl(
      lat: (json['lat'] as num?)?.toDouble(),
      lon: (json['lon'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$WeatherForecastCoordinatesImplToJson(
        _$WeatherForecastCoordinatesImpl instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lon': instance.lon,
    };

_$WeatherForecastSysImpl _$$WeatherForecastSysImplFromJson(
        Map<String, dynamic> json) =>
    _$WeatherForecastSysImpl(
      country: json['country'] as String?,
    );

Map<String, dynamic> _$$WeatherForecastSysImplToJson(
        _$WeatherForecastSysImpl instance) =>
    <String, dynamic>{
      'country': instance.country,
    };

_$WeatherForecastWindImpl _$$WeatherForecastWindImplFromJson(
        Map<String, dynamic> json) =>
    _$WeatherForecastWindImpl(
      speed: (json['speed'] as num?)?.toDouble(),
      deg: (json['deg'] as num?)?.toInt(),
      gust: (json['gust'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$WeatherForecastWindImplToJson(
        _$WeatherForecastWindImpl instance) =>
    <String, dynamic>{
      'speed': instance.speed,
      'deg': instance.deg,
      'gust': instance.gust,
    };
