/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsAnimationsGen {
  const $AssetsAnimationsGen();

  /// File path: assets/animations/cloudy_weather.json
  String get cloudyWeather => 'assets/animations/cloudy_weather.json';

  /// File path: assets/animations/drizzle_weather.json
  String get drizzleWeather => 'assets/animations/drizzle_weather.json';

  /// File path: assets/animations/rainy_weather.json
  String get rainyWeather => 'assets/animations/rainy_weather.json';

  /// File path: assets/animations/snow_weather.json
  String get snowWeather => 'assets/animations/snow_weather.json';

  /// File path: assets/animations/splash_animation.json
  String get splashAnimation => 'assets/animations/splash_animation.json';

  /// File path: assets/animations/sunny_weather.json
  String get sunnyWeather => 'assets/animations/sunny_weather.json';

  /// File path: assets/animations/thunderstorm_weather.json
  String get thunderstormWeather =>
      'assets/animations/thunderstorm_weather.json';

  /// List of all assets
  List<String> get values => [
        cloudyWeather,
        drizzleWeather,
        rainyWeather,
        snowWeather,
        splashAnimation,
        sunnyWeather,
        thunderstormWeather
      ];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/sunrise_icon.png
  AssetGenImage get sunriseIcon =>
      const AssetGenImage('assets/icons/sunrise_icon.png');

  /// File path: assets/icons/sunset_icon.png
  AssetGenImage get sunsetIcon =>
      const AssetGenImage('assets/icons/sunset_icon.png');

  /// File path: assets/icons/temperature_high_icon.png
  AssetGenImage get temperatureHighIcon =>
      const AssetGenImage('assets/icons/temperature_high_icon.png');

  /// File path: assets/icons/temperature_low_icon.png
  AssetGenImage get temperatureLowIcon =>
      const AssetGenImage('assets/icons/temperature_low_icon.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [sunriseIcon, sunsetIcon, temperatureHighIcon, temperatureLowIcon];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/storm_image.png
  AssetGenImage get stormImage =>
      const AssetGenImage('assets/images/storm_image.png');

  /// List of all assets
  List<AssetGenImage> get values => [stormImage];
}

class Assets {
  Assets._();

  static const $AssetsAnimationsGen animations = $AssetsAnimationsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
