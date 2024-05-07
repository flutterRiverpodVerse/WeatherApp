import 'package:weather_app/features/home/domain/weather_forecast_model.dart';
import 'package:weather_app/features/home/domain/weather_model.dart';

abstract class AbWeatherRemoteServices {
  Future<WeatherModel> fetchWeather();

  Future<List<WeatherForecastModel>> fetchWeatherForecast();
}
