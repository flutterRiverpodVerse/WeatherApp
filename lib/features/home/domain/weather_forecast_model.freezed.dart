// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_forecast_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeatherForecastModel _$WeatherForecastModelFromJson(Map<String, dynamic> json) {
  return _WeatherForecastModel.fromJson(json);
}

/// @nodoc
mixin _$WeatherForecastModel {
  int? get dt => throw _privateConstructorUsedError;
  WeatherForecastMain? get main => throw _privateConstructorUsedError;
  List<WeatherForecastDesc>? get weather => throw _privateConstructorUsedError;
  WeatherForecastClouds? get clouds => throw _privateConstructorUsedError;
  WeatherForecastWind? get wind => throw _privateConstructorUsedError;
  int? get visibility => throw _privateConstructorUsedError;
  int? get pop => throw _privateConstructorUsedError;
  WeatherForecastSys? get sys => throw _privateConstructorUsedError;
  DateTime? get dtTxt => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  WeatherForecastCoordinates? get coord => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherForecastModelCopyWith<WeatherForecastModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherForecastModelCopyWith<$Res> {
  factory $WeatherForecastModelCopyWith(WeatherForecastModel value,
          $Res Function(WeatherForecastModel) then) =
      _$WeatherForecastModelCopyWithImpl<$Res, WeatherForecastModel>;
  @useResult
  $Res call(
      {int? dt,
      WeatherForecastMain? main,
      List<WeatherForecastDesc>? weather,
      WeatherForecastClouds? clouds,
      WeatherForecastWind? wind,
      int? visibility,
      int? pop,
      WeatherForecastSys? sys,
      DateTime? dtTxt,
      String? name,
      WeatherForecastCoordinates? coord});

  $WeatherForecastMainCopyWith<$Res>? get main;
  $WeatherForecastCloudsCopyWith<$Res>? get clouds;
  $WeatherForecastWindCopyWith<$Res>? get wind;
  $WeatherForecastSysCopyWith<$Res>? get sys;
  $WeatherForecastCoordinatesCopyWith<$Res>? get coord;
}

/// @nodoc
class _$WeatherForecastModelCopyWithImpl<$Res,
        $Val extends WeatherForecastModel>
    implements $WeatherForecastModelCopyWith<$Res> {
  _$WeatherForecastModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dt = freezed,
    Object? main = freezed,
    Object? weather = freezed,
    Object? clouds = freezed,
    Object? wind = freezed,
    Object? visibility = freezed,
    Object? pop = freezed,
    Object? sys = freezed,
    Object? dtTxt = freezed,
    Object? name = freezed,
    Object? coord = freezed,
  }) {
    return _then(_value.copyWith(
      dt: freezed == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int?,
      main: freezed == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as WeatherForecastMain?,
      weather: freezed == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherForecastDesc>?,
      clouds: freezed == clouds
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as WeatherForecastClouds?,
      wind: freezed == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as WeatherForecastWind?,
      visibility: freezed == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int?,
      pop: freezed == pop
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as int?,
      sys: freezed == sys
          ? _value.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as WeatherForecastSys?,
      dtTxt: freezed == dtTxt
          ? _value.dtTxt
          : dtTxt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      coord: freezed == coord
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as WeatherForecastCoordinates?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherForecastMainCopyWith<$Res>? get main {
    if (_value.main == null) {
      return null;
    }

    return $WeatherForecastMainCopyWith<$Res>(_value.main!, (value) {
      return _then(_value.copyWith(main: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherForecastCloudsCopyWith<$Res>? get clouds {
    if (_value.clouds == null) {
      return null;
    }

    return $WeatherForecastCloudsCopyWith<$Res>(_value.clouds!, (value) {
      return _then(_value.copyWith(clouds: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherForecastWindCopyWith<$Res>? get wind {
    if (_value.wind == null) {
      return null;
    }

    return $WeatherForecastWindCopyWith<$Res>(_value.wind!, (value) {
      return _then(_value.copyWith(wind: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherForecastSysCopyWith<$Res>? get sys {
    if (_value.sys == null) {
      return null;
    }

    return $WeatherForecastSysCopyWith<$Res>(_value.sys!, (value) {
      return _then(_value.copyWith(sys: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherForecastCoordinatesCopyWith<$Res>? get coord {
    if (_value.coord == null) {
      return null;
    }

    return $WeatherForecastCoordinatesCopyWith<$Res>(_value.coord!, (value) {
      return _then(_value.copyWith(coord: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherForecastModelImplCopyWith<$Res>
    implements $WeatherForecastModelCopyWith<$Res> {
  factory _$$WeatherForecastModelImplCopyWith(_$WeatherForecastModelImpl value,
          $Res Function(_$WeatherForecastModelImpl) then) =
      __$$WeatherForecastModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? dt,
      WeatherForecastMain? main,
      List<WeatherForecastDesc>? weather,
      WeatherForecastClouds? clouds,
      WeatherForecastWind? wind,
      int? visibility,
      int? pop,
      WeatherForecastSys? sys,
      DateTime? dtTxt,
      String? name,
      WeatherForecastCoordinates? coord});

  @override
  $WeatherForecastMainCopyWith<$Res>? get main;
  @override
  $WeatherForecastCloudsCopyWith<$Res>? get clouds;
  @override
  $WeatherForecastWindCopyWith<$Res>? get wind;
  @override
  $WeatherForecastSysCopyWith<$Res>? get sys;
  @override
  $WeatherForecastCoordinatesCopyWith<$Res>? get coord;
}

/// @nodoc
class __$$WeatherForecastModelImplCopyWithImpl<$Res>
    extends _$WeatherForecastModelCopyWithImpl<$Res, _$WeatherForecastModelImpl>
    implements _$$WeatherForecastModelImplCopyWith<$Res> {
  __$$WeatherForecastModelImplCopyWithImpl(_$WeatherForecastModelImpl _value,
      $Res Function(_$WeatherForecastModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dt = freezed,
    Object? main = freezed,
    Object? weather = freezed,
    Object? clouds = freezed,
    Object? wind = freezed,
    Object? visibility = freezed,
    Object? pop = freezed,
    Object? sys = freezed,
    Object? dtTxt = freezed,
    Object? name = freezed,
    Object? coord = freezed,
  }) {
    return _then(_$WeatherForecastModelImpl(
      dt: freezed == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int?,
      main: freezed == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as WeatherForecastMain?,
      weather: freezed == weather
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherForecastDesc>?,
      clouds: freezed == clouds
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as WeatherForecastClouds?,
      wind: freezed == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as WeatherForecastWind?,
      visibility: freezed == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int?,
      pop: freezed == pop
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as int?,
      sys: freezed == sys
          ? _value.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as WeatherForecastSys?,
      dtTxt: freezed == dtTxt
          ? _value.dtTxt
          : dtTxt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      coord: freezed == coord
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as WeatherForecastCoordinates?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherForecastModelImpl implements _WeatherForecastModel {
  const _$WeatherForecastModelImpl(
      {this.dt,
      this.main,
      final List<WeatherForecastDesc>? weather,
      this.clouds,
      this.wind,
      this.visibility,
      this.pop,
      this.sys,
      this.dtTxt,
      this.name,
      this.coord})
      : _weather = weather;

  factory _$WeatherForecastModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherForecastModelImplFromJson(json);

  @override
  final int? dt;
  @override
  final WeatherForecastMain? main;
  final List<WeatherForecastDesc>? _weather;
  @override
  List<WeatherForecastDesc>? get weather {
    final value = _weather;
    if (value == null) return null;
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final WeatherForecastClouds? clouds;
  @override
  final WeatherForecastWind? wind;
  @override
  final int? visibility;
  @override
  final int? pop;
  @override
  final WeatherForecastSys? sys;
  @override
  final DateTime? dtTxt;
  @override
  final String? name;
  @override
  final WeatherForecastCoordinates? coord;

  @override
  String toString() {
    return 'WeatherForecastModel(dt: $dt, main: $main, weather: $weather, clouds: $clouds, wind: $wind, visibility: $visibility, pop: $pop, sys: $sys, dtTxt: $dtTxt, name: $name, coord: $coord)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherForecastModelImpl &&
            (identical(other.dt, dt) || other.dt == dt) &&
            (identical(other.main, main) || other.main == main) &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            (identical(other.clouds, clouds) || other.clouds == clouds) &&
            (identical(other.wind, wind) || other.wind == wind) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.pop, pop) || other.pop == pop) &&
            (identical(other.sys, sys) || other.sys == sys) &&
            (identical(other.dtTxt, dtTxt) || other.dtTxt == dtTxt) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.coord, coord) || other.coord == coord));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      dt,
      main,
      const DeepCollectionEquality().hash(_weather),
      clouds,
      wind,
      visibility,
      pop,
      sys,
      dtTxt,
      name,
      coord);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherForecastModelImplCopyWith<_$WeatherForecastModelImpl>
      get copyWith =>
          __$$WeatherForecastModelImplCopyWithImpl<_$WeatherForecastModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherForecastModelImplToJson(
      this,
    );
  }
}

abstract class _WeatherForecastModel implements WeatherForecastModel {
  const factory _WeatherForecastModel(
      {final int? dt,
      final WeatherForecastMain? main,
      final List<WeatherForecastDesc>? weather,
      final WeatherForecastClouds? clouds,
      final WeatherForecastWind? wind,
      final int? visibility,
      final int? pop,
      final WeatherForecastSys? sys,
      final DateTime? dtTxt,
      final String? name,
      final WeatherForecastCoordinates? coord}) = _$WeatherForecastModelImpl;

  factory _WeatherForecastModel.fromJson(Map<String, dynamic> json) =
      _$WeatherForecastModelImpl.fromJson;

  @override
  int? get dt;
  @override
  WeatherForecastMain? get main;
  @override
  List<WeatherForecastDesc>? get weather;
  @override
  WeatherForecastClouds? get clouds;
  @override
  WeatherForecastWind? get wind;
  @override
  int? get visibility;
  @override
  int? get pop;
  @override
  WeatherForecastSys? get sys;
  @override
  DateTime? get dtTxt;
  @override
  String? get name;
  @override
  WeatherForecastCoordinates? get coord;
  @override
  @JsonKey(ignore: true)
  _$$WeatherForecastModelImplCopyWith<_$WeatherForecastModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WeatherForecastMain _$WeatherForecastMainFromJson(Map<String, dynamic> json) {
  return _WeatherForecastMain.fromJson(json);
}

/// @nodoc
mixin _$WeatherForecastMain {
  double? get temp => throw _privateConstructorUsedError;
  @JsonKey(name: "feels_like")
  double? get feelsLike => throw _privateConstructorUsedError;
  @JsonKey(name: "temp_min")
  double? get tempMin => throw _privateConstructorUsedError;
  @JsonKey(name: "temp_max")
  double? get tempMax => throw _privateConstructorUsedError;
  int? get pressure => throw _privateConstructorUsedError;
  @JsonKey(name: "sea_level")
  int? get seaLevel => throw _privateConstructorUsedError;
  @JsonKey(name: "grnd_level")
  int? get grndLevel => throw _privateConstructorUsedError;
  int? get humidity => throw _privateConstructorUsedError;
  double? get tempKf => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherForecastMainCopyWith<WeatherForecastMain> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherForecastMainCopyWith<$Res> {
  factory $WeatherForecastMainCopyWith(
          WeatherForecastMain value, $Res Function(WeatherForecastMain) then) =
      _$WeatherForecastMainCopyWithImpl<$Res, WeatherForecastMain>;
  @useResult
  $Res call(
      {double? temp,
      @JsonKey(name: "feels_like") double? feelsLike,
      @JsonKey(name: "temp_min") double? tempMin,
      @JsonKey(name: "temp_max") double? tempMax,
      int? pressure,
      @JsonKey(name: "sea_level") int? seaLevel,
      @JsonKey(name: "grnd_level") int? grndLevel,
      int? humidity,
      double? tempKf});
}

/// @nodoc
class _$WeatherForecastMainCopyWithImpl<$Res, $Val extends WeatherForecastMain>
    implements $WeatherForecastMainCopyWith<$Res> {
  _$WeatherForecastMainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = freezed,
    Object? feelsLike = freezed,
    Object? tempMin = freezed,
    Object? tempMax = freezed,
    Object? pressure = freezed,
    Object? seaLevel = freezed,
    Object? grndLevel = freezed,
    Object? humidity = freezed,
    Object? tempKf = freezed,
  }) {
    return _then(_value.copyWith(
      temp: freezed == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double?,
      feelsLike: freezed == feelsLike
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double?,
      tempMin: freezed == tempMin
          ? _value.tempMin
          : tempMin // ignore: cast_nullable_to_non_nullable
              as double?,
      tempMax: freezed == tempMax
          ? _value.tempMax
          : tempMax // ignore: cast_nullable_to_non_nullable
              as double?,
      pressure: freezed == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int?,
      seaLevel: freezed == seaLevel
          ? _value.seaLevel
          : seaLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      grndLevel: freezed == grndLevel
          ? _value.grndLevel
          : grndLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
      tempKf: freezed == tempKf
          ? _value.tempKf
          : tempKf // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherForecastMainImplCopyWith<$Res>
    implements $WeatherForecastMainCopyWith<$Res> {
  factory _$$WeatherForecastMainImplCopyWith(_$WeatherForecastMainImpl value,
          $Res Function(_$WeatherForecastMainImpl) then) =
      __$$WeatherForecastMainImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? temp,
      @JsonKey(name: "feels_like") double? feelsLike,
      @JsonKey(name: "temp_min") double? tempMin,
      @JsonKey(name: "temp_max") double? tempMax,
      int? pressure,
      @JsonKey(name: "sea_level") int? seaLevel,
      @JsonKey(name: "grnd_level") int? grndLevel,
      int? humidity,
      double? tempKf});
}

/// @nodoc
class __$$WeatherForecastMainImplCopyWithImpl<$Res>
    extends _$WeatherForecastMainCopyWithImpl<$Res, _$WeatherForecastMainImpl>
    implements _$$WeatherForecastMainImplCopyWith<$Res> {
  __$$WeatherForecastMainImplCopyWithImpl(_$WeatherForecastMainImpl _value,
      $Res Function(_$WeatherForecastMainImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = freezed,
    Object? feelsLike = freezed,
    Object? tempMin = freezed,
    Object? tempMax = freezed,
    Object? pressure = freezed,
    Object? seaLevel = freezed,
    Object? grndLevel = freezed,
    Object? humidity = freezed,
    Object? tempKf = freezed,
  }) {
    return _then(_$WeatherForecastMainImpl(
      temp: freezed == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double?,
      feelsLike: freezed == feelsLike
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double?,
      tempMin: freezed == tempMin
          ? _value.tempMin
          : tempMin // ignore: cast_nullable_to_non_nullable
              as double?,
      tempMax: freezed == tempMax
          ? _value.tempMax
          : tempMax // ignore: cast_nullable_to_non_nullable
              as double?,
      pressure: freezed == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int?,
      seaLevel: freezed == seaLevel
          ? _value.seaLevel
          : seaLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      grndLevel: freezed == grndLevel
          ? _value.grndLevel
          : grndLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
      tempKf: freezed == tempKf
          ? _value.tempKf
          : tempKf // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherForecastMainImpl implements _WeatherForecastMain {
  const _$WeatherForecastMainImpl(
      {this.temp,
      @JsonKey(name: "feels_like") this.feelsLike,
      @JsonKey(name: "temp_min") this.tempMin,
      @JsonKey(name: "temp_max") this.tempMax,
      this.pressure,
      @JsonKey(name: "sea_level") this.seaLevel,
      @JsonKey(name: "grnd_level") this.grndLevel,
      this.humidity,
      this.tempKf});

  factory _$WeatherForecastMainImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherForecastMainImplFromJson(json);

  @override
  final double? temp;
  @override
  @JsonKey(name: "feels_like")
  final double? feelsLike;
  @override
  @JsonKey(name: "temp_min")
  final double? tempMin;
  @override
  @JsonKey(name: "temp_max")
  final double? tempMax;
  @override
  final int? pressure;
  @override
  @JsonKey(name: "sea_level")
  final int? seaLevel;
  @override
  @JsonKey(name: "grnd_level")
  final int? grndLevel;
  @override
  final int? humidity;
  @override
  final double? tempKf;

  @override
  String toString() {
    return 'WeatherForecastMain(temp: $temp, feelsLike: $feelsLike, tempMin: $tempMin, tempMax: $tempMax, pressure: $pressure, seaLevel: $seaLevel, grndLevel: $grndLevel, humidity: $humidity, tempKf: $tempKf)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherForecastMainImpl &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.feelsLike, feelsLike) ||
                other.feelsLike == feelsLike) &&
            (identical(other.tempMin, tempMin) || other.tempMin == tempMin) &&
            (identical(other.tempMax, tempMax) || other.tempMax == tempMax) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure) &&
            (identical(other.seaLevel, seaLevel) ||
                other.seaLevel == seaLevel) &&
            (identical(other.grndLevel, grndLevel) ||
                other.grndLevel == grndLevel) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.tempKf, tempKf) || other.tempKf == tempKf));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, temp, feelsLike, tempMin,
      tempMax, pressure, seaLevel, grndLevel, humidity, tempKf);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherForecastMainImplCopyWith<_$WeatherForecastMainImpl> get copyWith =>
      __$$WeatherForecastMainImplCopyWithImpl<_$WeatherForecastMainImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherForecastMainImplToJson(
      this,
    );
  }
}

abstract class _WeatherForecastMain implements WeatherForecastMain {
  const factory _WeatherForecastMain(
      {final double? temp,
      @JsonKey(name: "feels_like") final double? feelsLike,
      @JsonKey(name: "temp_min") final double? tempMin,
      @JsonKey(name: "temp_max") final double? tempMax,
      final int? pressure,
      @JsonKey(name: "sea_level") final int? seaLevel,
      @JsonKey(name: "grnd_level") final int? grndLevel,
      final int? humidity,
      final double? tempKf}) = _$WeatherForecastMainImpl;

  factory _WeatherForecastMain.fromJson(Map<String, dynamic> json) =
      _$WeatherForecastMainImpl.fromJson;

  @override
  double? get temp;
  @override
  @JsonKey(name: "feels_like")
  double? get feelsLike;
  @override
  @JsonKey(name: "temp_min")
  double? get tempMin;
  @override
  @JsonKey(name: "temp_max")
  double? get tempMax;
  @override
  int? get pressure;
  @override
  @JsonKey(name: "sea_level")
  int? get seaLevel;
  @override
  @JsonKey(name: "grnd_level")
  int? get grndLevel;
  @override
  int? get humidity;
  @override
  double? get tempKf;
  @override
  @JsonKey(ignore: true)
  _$$WeatherForecastMainImplCopyWith<_$WeatherForecastMainImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeatherForecastDesc _$WeatherForecastDescFromJson(Map<String, dynamic> json) {
  return _WeatherForecastDesc.fromJson(json);
}

/// @nodoc
mixin _$WeatherForecastDesc {
  int? get id => throw _privateConstructorUsedError;
  String? get main => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherForecastDescCopyWith<WeatherForecastDesc> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherForecastDescCopyWith<$Res> {
  factory $WeatherForecastDescCopyWith(
          WeatherForecastDesc value, $Res Function(WeatherForecastDesc) then) =
      _$WeatherForecastDescCopyWithImpl<$Res, WeatherForecastDesc>;
  @useResult
  $Res call({int? id, String? main, String? description, String? icon});
}

/// @nodoc
class _$WeatherForecastDescCopyWithImpl<$Res, $Val extends WeatherForecastDesc>
    implements $WeatherForecastDescCopyWith<$Res> {
  _$WeatherForecastDescCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? main = freezed,
    Object? description = freezed,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      main: freezed == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherForecastDescImplCopyWith<$Res>
    implements $WeatherForecastDescCopyWith<$Res> {
  factory _$$WeatherForecastDescImplCopyWith(_$WeatherForecastDescImpl value,
          $Res Function(_$WeatherForecastDescImpl) then) =
      __$$WeatherForecastDescImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? main, String? description, String? icon});
}

/// @nodoc
class __$$WeatherForecastDescImplCopyWithImpl<$Res>
    extends _$WeatherForecastDescCopyWithImpl<$Res, _$WeatherForecastDescImpl>
    implements _$$WeatherForecastDescImplCopyWith<$Res> {
  __$$WeatherForecastDescImplCopyWithImpl(_$WeatherForecastDescImpl _value,
      $Res Function(_$WeatherForecastDescImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? main = freezed,
    Object? description = freezed,
    Object? icon = freezed,
  }) {
    return _then(_$WeatherForecastDescImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      main: freezed == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherForecastDescImpl implements _WeatherForecastDesc {
  const _$WeatherForecastDescImpl(
      {this.id, this.main, this.description, this.icon});

  factory _$WeatherForecastDescImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherForecastDescImplFromJson(json);

  @override
  final int? id;
  @override
  final String? main;
  @override
  final String? description;
  @override
  final String? icon;

  @override
  String toString() {
    return 'WeatherForecastDesc(id: $id, main: $main, description: $description, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherForecastDescImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, main, description, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherForecastDescImplCopyWith<_$WeatherForecastDescImpl> get copyWith =>
      __$$WeatherForecastDescImplCopyWithImpl<_$WeatherForecastDescImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherForecastDescImplToJson(
      this,
    );
  }
}

abstract class _WeatherForecastDesc implements WeatherForecastDesc {
  const factory _WeatherForecastDesc(
      {final int? id,
      final String? main,
      final String? description,
      final String? icon}) = _$WeatherForecastDescImpl;

  factory _WeatherForecastDesc.fromJson(Map<String, dynamic> json) =
      _$WeatherForecastDescImpl.fromJson;

  @override
  int? get id;
  @override
  String? get main;
  @override
  String? get description;
  @override
  String? get icon;
  @override
  @JsonKey(ignore: true)
  _$$WeatherForecastDescImplCopyWith<_$WeatherForecastDescImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeatherForecastClouds _$WeatherForecastCloudsFromJson(
    Map<String, dynamic> json) {
  return _WeatherForecastClouds.fromJson(json);
}

/// @nodoc
mixin _$WeatherForecastClouds {
  int? get all => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherForecastCloudsCopyWith<WeatherForecastClouds> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherForecastCloudsCopyWith<$Res> {
  factory $WeatherForecastCloudsCopyWith(WeatherForecastClouds value,
          $Res Function(WeatherForecastClouds) then) =
      _$WeatherForecastCloudsCopyWithImpl<$Res, WeatherForecastClouds>;
  @useResult
  $Res call({int? all});
}

/// @nodoc
class _$WeatherForecastCloudsCopyWithImpl<$Res,
        $Val extends WeatherForecastClouds>
    implements $WeatherForecastCloudsCopyWith<$Res> {
  _$WeatherForecastCloudsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? all = freezed,
  }) {
    return _then(_value.copyWith(
      all: freezed == all
          ? _value.all
          : all // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherForecastCloudsImplCopyWith<$Res>
    implements $WeatherForecastCloudsCopyWith<$Res> {
  factory _$$WeatherForecastCloudsImplCopyWith(
          _$WeatherForecastCloudsImpl value,
          $Res Function(_$WeatherForecastCloudsImpl) then) =
      __$$WeatherForecastCloudsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? all});
}

/// @nodoc
class __$$WeatherForecastCloudsImplCopyWithImpl<$Res>
    extends _$WeatherForecastCloudsCopyWithImpl<$Res,
        _$WeatherForecastCloudsImpl>
    implements _$$WeatherForecastCloudsImplCopyWith<$Res> {
  __$$WeatherForecastCloudsImplCopyWithImpl(_$WeatherForecastCloudsImpl _value,
      $Res Function(_$WeatherForecastCloudsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? all = freezed,
  }) {
    return _then(_$WeatherForecastCloudsImpl(
      all: freezed == all
          ? _value.all
          : all // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherForecastCloudsImpl implements _WeatherForecastClouds {
  const _$WeatherForecastCloudsImpl({this.all});

  factory _$WeatherForecastCloudsImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherForecastCloudsImplFromJson(json);

  @override
  final int? all;

  @override
  String toString() {
    return 'WeatherForecastClouds(all: $all)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherForecastCloudsImpl &&
            (identical(other.all, all) || other.all == all));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, all);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherForecastCloudsImplCopyWith<_$WeatherForecastCloudsImpl>
      get copyWith => __$$WeatherForecastCloudsImplCopyWithImpl<
          _$WeatherForecastCloudsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherForecastCloudsImplToJson(
      this,
    );
  }
}

abstract class _WeatherForecastClouds implements WeatherForecastClouds {
  const factory _WeatherForecastClouds({final int? all}) =
      _$WeatherForecastCloudsImpl;

  factory _WeatherForecastClouds.fromJson(Map<String, dynamic> json) =
      _$WeatherForecastCloudsImpl.fromJson;

  @override
  int? get all;
  @override
  @JsonKey(ignore: true)
  _$$WeatherForecastCloudsImplCopyWith<_$WeatherForecastCloudsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WeatherForecastCoordinates _$WeatherForecastCoordinatesFromJson(
    Map<String, dynamic> json) {
  return _WeatherForecastCoordinates.fromJson(json);
}

/// @nodoc
mixin _$WeatherForecastCoordinates {
  double? get lat => throw _privateConstructorUsedError;
  double? get lon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherForecastCoordinatesCopyWith<WeatherForecastCoordinates>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherForecastCoordinatesCopyWith<$Res> {
  factory $WeatherForecastCoordinatesCopyWith(WeatherForecastCoordinates value,
          $Res Function(WeatherForecastCoordinates) then) =
      _$WeatherForecastCoordinatesCopyWithImpl<$Res,
          WeatherForecastCoordinates>;
  @useResult
  $Res call({double? lat, double? lon});
}

/// @nodoc
class _$WeatherForecastCoordinatesCopyWithImpl<$Res,
        $Val extends WeatherForecastCoordinates>
    implements $WeatherForecastCoordinatesCopyWith<$Res> {
  _$WeatherForecastCoordinatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = freezed,
    Object? lon = freezed,
  }) {
    return _then(_value.copyWith(
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherForecastCoordinatesImplCopyWith<$Res>
    implements $WeatherForecastCoordinatesCopyWith<$Res> {
  factory _$$WeatherForecastCoordinatesImplCopyWith(
          _$WeatherForecastCoordinatesImpl value,
          $Res Function(_$WeatherForecastCoordinatesImpl) then) =
      __$$WeatherForecastCoordinatesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? lat, double? lon});
}

/// @nodoc
class __$$WeatherForecastCoordinatesImplCopyWithImpl<$Res>
    extends _$WeatherForecastCoordinatesCopyWithImpl<$Res,
        _$WeatherForecastCoordinatesImpl>
    implements _$$WeatherForecastCoordinatesImplCopyWith<$Res> {
  __$$WeatherForecastCoordinatesImplCopyWithImpl(
      _$WeatherForecastCoordinatesImpl _value,
      $Res Function(_$WeatherForecastCoordinatesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = freezed,
    Object? lon = freezed,
  }) {
    return _then(_$WeatherForecastCoordinatesImpl(
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherForecastCoordinatesImpl implements _WeatherForecastCoordinates {
  const _$WeatherForecastCoordinatesImpl({this.lat, this.lon});

  factory _$WeatherForecastCoordinatesImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$WeatherForecastCoordinatesImplFromJson(json);

  @override
  final double? lat;
  @override
  final double? lon;

  @override
  String toString() {
    return 'WeatherForecastCoordinates(lat: $lat, lon: $lon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherForecastCoordinatesImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherForecastCoordinatesImplCopyWith<_$WeatherForecastCoordinatesImpl>
      get copyWith => __$$WeatherForecastCoordinatesImplCopyWithImpl<
          _$WeatherForecastCoordinatesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherForecastCoordinatesImplToJson(
      this,
    );
  }
}

abstract class _WeatherForecastCoordinates
    implements WeatherForecastCoordinates {
  const factory _WeatherForecastCoordinates(
      {final double? lat,
      final double? lon}) = _$WeatherForecastCoordinatesImpl;

  factory _WeatherForecastCoordinates.fromJson(Map<String, dynamic> json) =
      _$WeatherForecastCoordinatesImpl.fromJson;

  @override
  double? get lat;
  @override
  double? get lon;
  @override
  @JsonKey(ignore: true)
  _$$WeatherForecastCoordinatesImplCopyWith<_$WeatherForecastCoordinatesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WeatherForecastSys _$WeatherForecastSysFromJson(Map<String, dynamic> json) {
  return _WeatherForecastSys.fromJson(json);
}

/// @nodoc
mixin _$WeatherForecastSys {
  String? get country => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherForecastSysCopyWith<WeatherForecastSys> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherForecastSysCopyWith<$Res> {
  factory $WeatherForecastSysCopyWith(
          WeatherForecastSys value, $Res Function(WeatherForecastSys) then) =
      _$WeatherForecastSysCopyWithImpl<$Res, WeatherForecastSys>;
  @useResult
  $Res call({String? country});
}

/// @nodoc
class _$WeatherForecastSysCopyWithImpl<$Res, $Val extends WeatherForecastSys>
    implements $WeatherForecastSysCopyWith<$Res> {
  _$WeatherForecastSysCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = freezed,
  }) {
    return _then(_value.copyWith(
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherForecastSysImplCopyWith<$Res>
    implements $WeatherForecastSysCopyWith<$Res> {
  factory _$$WeatherForecastSysImplCopyWith(_$WeatherForecastSysImpl value,
          $Res Function(_$WeatherForecastSysImpl) then) =
      __$$WeatherForecastSysImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? country});
}

/// @nodoc
class __$$WeatherForecastSysImplCopyWithImpl<$Res>
    extends _$WeatherForecastSysCopyWithImpl<$Res, _$WeatherForecastSysImpl>
    implements _$$WeatherForecastSysImplCopyWith<$Res> {
  __$$WeatherForecastSysImplCopyWithImpl(_$WeatherForecastSysImpl _value,
      $Res Function(_$WeatherForecastSysImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = freezed,
  }) {
    return _then(_$WeatherForecastSysImpl(
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherForecastSysImpl implements _WeatherForecastSys {
  const _$WeatherForecastSysImpl({this.country});

  factory _$WeatherForecastSysImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherForecastSysImplFromJson(json);

  @override
  final String? country;

  @override
  String toString() {
    return 'WeatherForecastSys(country: $country)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherForecastSysImpl &&
            (identical(other.country, country) || other.country == country));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherForecastSysImplCopyWith<_$WeatherForecastSysImpl> get copyWith =>
      __$$WeatherForecastSysImplCopyWithImpl<_$WeatherForecastSysImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherForecastSysImplToJson(
      this,
    );
  }
}

abstract class _WeatherForecastSys implements WeatherForecastSys {
  const factory _WeatherForecastSys({final String? country}) =
      _$WeatherForecastSysImpl;

  factory _WeatherForecastSys.fromJson(Map<String, dynamic> json) =
      _$WeatherForecastSysImpl.fromJson;

  @override
  String? get country;
  @override
  @JsonKey(ignore: true)
  _$$WeatherForecastSysImplCopyWith<_$WeatherForecastSysImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WeatherForecastWind _$WeatherForecastWindFromJson(Map<String, dynamic> json) {
  return _WeatherForecastWind.fromJson(json);
}

/// @nodoc
mixin _$WeatherForecastWind {
  double? get speed => throw _privateConstructorUsedError;
  int? get deg => throw _privateConstructorUsedError;
  double? get gust => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherForecastWindCopyWith<WeatherForecastWind> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherForecastWindCopyWith<$Res> {
  factory $WeatherForecastWindCopyWith(
          WeatherForecastWind value, $Res Function(WeatherForecastWind) then) =
      _$WeatherForecastWindCopyWithImpl<$Res, WeatherForecastWind>;
  @useResult
  $Res call({double? speed, int? deg, double? gust});
}

/// @nodoc
class _$WeatherForecastWindCopyWithImpl<$Res, $Val extends WeatherForecastWind>
    implements $WeatherForecastWindCopyWith<$Res> {
  _$WeatherForecastWindCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speed = freezed,
    Object? deg = freezed,
    Object? gust = freezed,
  }) {
    return _then(_value.copyWith(
      speed: freezed == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double?,
      deg: freezed == deg
          ? _value.deg
          : deg // ignore: cast_nullable_to_non_nullable
              as int?,
      gust: freezed == gust
          ? _value.gust
          : gust // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherForecastWindImplCopyWith<$Res>
    implements $WeatherForecastWindCopyWith<$Res> {
  factory _$$WeatherForecastWindImplCopyWith(_$WeatherForecastWindImpl value,
          $Res Function(_$WeatherForecastWindImpl) then) =
      __$$WeatherForecastWindImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? speed, int? deg, double? gust});
}

/// @nodoc
class __$$WeatherForecastWindImplCopyWithImpl<$Res>
    extends _$WeatherForecastWindCopyWithImpl<$Res, _$WeatherForecastWindImpl>
    implements _$$WeatherForecastWindImplCopyWith<$Res> {
  __$$WeatherForecastWindImplCopyWithImpl(_$WeatherForecastWindImpl _value,
      $Res Function(_$WeatherForecastWindImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speed = freezed,
    Object? deg = freezed,
    Object? gust = freezed,
  }) {
    return _then(_$WeatherForecastWindImpl(
      speed: freezed == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double?,
      deg: freezed == deg
          ? _value.deg
          : deg // ignore: cast_nullable_to_non_nullable
              as int?,
      gust: freezed == gust
          ? _value.gust
          : gust // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherForecastWindImpl implements _WeatherForecastWind {
  const _$WeatherForecastWindImpl({this.speed, this.deg, this.gust});

  factory _$WeatherForecastWindImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherForecastWindImplFromJson(json);

  @override
  final double? speed;
  @override
  final int? deg;
  @override
  final double? gust;

  @override
  String toString() {
    return 'WeatherForecastWind(speed: $speed, deg: $deg, gust: $gust)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherForecastWindImpl &&
            (identical(other.speed, speed) || other.speed == speed) &&
            (identical(other.deg, deg) || other.deg == deg) &&
            (identical(other.gust, gust) || other.gust == gust));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, speed, deg, gust);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherForecastWindImplCopyWith<_$WeatherForecastWindImpl> get copyWith =>
      __$$WeatherForecastWindImplCopyWithImpl<_$WeatherForecastWindImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherForecastWindImplToJson(
      this,
    );
  }
}

abstract class _WeatherForecastWind implements WeatherForecastWind {
  const factory _WeatherForecastWind(
      {final double? speed,
      final int? deg,
      final double? gust}) = _$WeatherForecastWindImpl;

  factory _WeatherForecastWind.fromJson(Map<String, dynamic> json) =
      _$WeatherForecastWindImpl.fromJson;

  @override
  double? get speed;
  @override
  int? get deg;
  @override
  double? get gust;
  @override
  @JsonKey(ignore: true)
  _$$WeatherForecastWindImplCopyWith<_$WeatherForecastWindImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
