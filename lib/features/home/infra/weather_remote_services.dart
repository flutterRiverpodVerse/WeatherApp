// ignore_for_file: unused_local_variable

import 'dart:developer';

import 'package:geolocator/geolocator.dart';
import 'package:weather/weather.dart';
import 'package:weather_app/core/constants/app_colors.dart';
import 'package:weather_app/core/constants/app_config.dart';
import 'package:weather_app/core/constants/app_constants.dart';
import 'package:weather_app/features/home/domain/ab_weather_remote_services.dart';
import 'package:weather_app/features/home/domain/weather_forecast_model.dart';
import 'package:weather_app/features/home/domain/weather_model.dart';

class WeatherRemoteServices extends AbWeatherRemoteServices {
  @override
  Future<WeatherModel> fetchWeather() async {
    WeatherModel weatherModel = WeatherModel.empty();
    try {
      WeatherFactory wf = WeatherFactory(
        AppConfig.weatherApiKey,
        language: Language.ENGLISH,
      );

      await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      ).then((locationAddress) async {
        await wf
            .currentWeatherByLocation(
          locationAddress.latitude,
          locationAddress.longitude,
        )
            .then((weather) {
          weatherModel = WeatherModel.fromJson(weather.toJson()!);
        });
      });
    } catch (e) {
      AppConstants.showSnackbar(
        backgroundColor: AppColors.error,
        text: e.toString(),
      );
    }
    return weatherModel;
  }

  @override
  Future<List<WeatherForecastModel>> fetchWeatherForecast() async {
    List<WeatherForecastModel> weatherForecast = [];
    try {
      WeatherFactory wf = WeatherFactory(
        AppConfig.weatherApiKey,
        language: Language.ENGLISH,
      );

      await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      ).then((locationAddress) async {
        await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high,
        ).then(
          (locationAddress) async {
            List<Weather> forecast = await wf.fiveDayForecastByLocation(
              locationAddress.latitude,
              locationAddress.longitude,
            );

            weatherForecast = forecast
                .map((e) => WeatherForecastModel.fromJson(e.toJson()!))
                .toList();

            log(weatherForecast.toString());
          },
        );
      });
    } catch (e) {
      AppConstants.showSnackbar(
        backgroundColor: AppColors.error,
        text: e.toString(),
      );
    }
    return weatherForecast;
  }
}
