import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_app/features/home/domain/weather_forecast_model.dart';
import 'package:weather_app/features/home/domain/weather_model.dart';
import 'package:weather_app/features/home/infra/weather_remote_services.dart';

final weatherRemoteServicesProvider = Provider<WeatherRemoteServices>(
  (ref) {
    return WeatherRemoteServices();
  },
);

final fetchWeatherProvider = FutureProvider<WeatherModel>(
  (ref) async {
    final weather = ref.watch(weatherRemoteServicesProvider).fetchWeather();
    return weather;
  },
);
final fetchWeatherForecastProvider = FutureProvider<List<WeatherForecastModel>>(
  (ref) async {
    final weatherForecast =
        ref.watch(weatherRemoteServicesProvider).fetchWeatherForecast();
    return weatherForecast;
  },
);
