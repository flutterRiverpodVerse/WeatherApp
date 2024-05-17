import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/core/constants/app_colors.dart';
import 'package:weather_app/features/home/domain/weather_forecast_model.dart';
import 'package:weather_app/gen/assets.gen.dart';

class WeatherForecastContainerWidget extends StatelessWidget {
  const WeatherForecastContainerWidget({
    super.key,
    required this.weatherForecastModel,
  });

  final WeatherForecastModel weatherForecastModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      margin: EdgeInsets.only(
        bottom: 10.h,
      ),
      padding: EdgeInsets.symmetric(
        vertical: 15.h,
        horizontal: 15.w,
      ),
      decoration: BoxDecoration(
        color: AppColors.white.withOpacity(0.3),
        borderRadius: BorderRadius.circular(
          8.r,
        ),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 8,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 15.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "${DateFormat("MMM, dd").format(DateTime.fromMillisecondsSinceEpoch(
                              weatherForecastModel.dt! * 1000,
                            ).toLocal())} | ",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  fontSize: 15.sp,
                                  color: AppColors.white,
                                ),
                          ),
                          Text(
                            DateFormat("hh:mm a")
                                .format(DateTime.fromMillisecondsSinceEpoch(
                              weatherForecastModel.dt! * 1000,
                            ).toLocal()),
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  fontSize: 15.sp,
                                  color: AppColors.white,
                                ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                Assets.icons.temperatureHighIcon.path,
                                height: 20.h,
                                width: 20.w,
                              ),
                              Text(
                                "H : ${weatherForecastModel.main!.tempMax!.toInt() - 273}°C",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(
                                      fontSize: 14.sp,
                                      color: AppColors.white,
                                    ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset(
                                Assets.icons.temperatureLowIcon.path,
                                height: 20.h,
                                width: 20.w,
                              ),
                              Text(
                                "L : ${weatherForecastModel.main!.tempMin!.toInt() - 273}°C",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(
                                      fontSize: 14.sp,
                                      color: AppColors.white,
                                    ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Column(
                  children: [
                    if (weatherForecastModel.weather!.first.id! >= 200 &&
                        weatherForecastModel.weather!.first.id! <= 232)
                      Lottie.asset(
                        Assets.animations.thunderstormWeather,
                      ),
                    if (weatherForecastModel.weather!.first.id! >= 300 &&
                        weatherForecastModel.weather!.first.id! <= 321)
                      Lottie.asset(
                        Assets.animations.drizzleWeather,
                      ),
                    if (weatherForecastModel.weather!.first.id! >= 500 &&
                        weatherForecastModel.weather!.first.id! <= 531)
                      Lottie.asset(
                        Assets.animations.rainyWeather,
                      ),
                    if (weatherForecastModel.weather!.first.id! >= 600 &&
                        weatherForecastModel.weather!.first.id! <= 622)
                      Lottie.asset(
                        Assets.animations.snowWeather,
                      ),
                    if (weatherForecastModel.weather!.first.id! >= 701 &&
                        weatherForecastModel.weather!.first.id! <= 781)
                      Lottie.asset(
                        Assets.animations.sunnyWeather,
                      ),
                    if (weatherForecastModel.weather!.first.id! == 800)
                      Lottie.asset(
                        Assets.animations.sunnyWeather,
                      ),
                    if (weatherForecastModel.weather!.first.id! >= 801 &&
                        weatherForecastModel.weather!.first.id! <= 804)
                      Lottie.asset(
                        Assets.animations.cloudyWeather,
                      ),
                    Text(
                      "${weatherForecastModel.main!.temp!.toInt() - 273}°C",
                      style:
                          Theme.of(context).textTheme.headlineSmall!.copyWith(
                                fontSize: 14.sp,
                                color: AppColors.white,
                              ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(
                      weatherForecastModel.weather!.first.main!,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style:
                          Theme.of(context).textTheme.headlineSmall!.copyWith(
                                fontSize: 14.sp,
                                color: AppColors.white,
                              ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
