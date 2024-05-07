import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/core/constants/app_colors.dart';
import 'package:weather_app/features/home/domain/weather_model.dart';
import 'package:weather_app/gen/assets.gen.dart';

class WeatherContainerWidget extends StatelessWidget {
  const WeatherContainerWidget({
    super.key,
    required this.weatherData,
    required this.currentAddress,
    required this.code,
  });
  final WeatherModel weatherData;
  final ValueNotifier<String?> currentAddress;
  final ValueNotifier<int> code;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
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
                      Text(
                        "Today",
                        style:
                            Theme.of(context).textTheme.headlineSmall!.copyWith(
                                  fontSize: 12.sp,
                                  color: AppColors.white,
                                ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        "${currentAddress.value}",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                              fontSize: 16.sp,
                              color: AppColors.white,
                            ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        children: [
                          Text(
                            "${DateFormat("MMM, dd").format(DateTime.fromMillisecondsSinceEpoch(
                              weatherData.dt! * 1000,
                            ).toLocal())} | ",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  fontSize: 11.sp,
                                  color: AppColors.white,
                                ),
                          ),
                          Text(
                            DateFormat("hh:mm a")
                                .format(DateTime.fromMillisecondsSinceEpoch(
                              weatherData.dt! * 1000,
                            ).toLocal()),
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  fontSize: 11.sp,
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
                                "H : ${weatherData.main!.tempMax!.toInt() - 273}°C",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(
                                      fontSize: 12.sp,
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
                                "L : ${weatherData.main!.tempMin!.toInt() - 273}°C",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(
                                      fontSize: 12.sp,
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
                    if (code.value >= 200 && code.value <= 232)
                      Lottie.asset(
                        Assets.animations.thunderstormWeather,
                      ),
                    if (code.value >= 300 && code.value <= 321)
                      Lottie.asset(
                        Assets.animations.drizzleWeather,
                      ),
                    if (code.value >= 500 && code.value <= 531)
                      Lottie.asset(
                        Assets.animations.rainyWeather,
                      ),
                    if (code.value >= 600 && code.value <= 622)
                      Lottie.asset(
                        Assets.animations.snowWeather,
                      ),
                    if (code.value >= 701 && code.value <= 781)
                      Lottie.asset(
                        Assets.animations.sunnyWeather,
                      ),
                    if (code.value == 800)
                      Lottie.asset(
                        Assets.animations.sunnyWeather,
                      ),
                    if (code.value >= 801 && code.value <= 804)
                      Lottie.asset(
                        Assets.animations.cloudyWeather,
                      ),
                    Text(
                      "${weatherData.main!.temp!.toInt() - 273}°C",
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
                      weatherData.weather!.first.main!,
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
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    Assets.icons.sunriseIcon.path,
                    height: 20.h,
                    width: 20.w,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "Sunrise ${DateFormat("hh:mm a").format(DateTime.fromMillisecondsSinceEpoch(
                      weatherData.sys!.sunrise! * 1000,
                    ).toLocal())}",
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          fontSize: 11.sp,
                          color: AppColors.white,
                        ),
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    Assets.icons.sunsetIcon.path,
                    height: 20.h,
                    width: 20.w,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "Sunset ${DateFormat("hh:mm a").format(DateTime.fromMillisecondsSinceEpoch(
                      weatherData.sys!.sunset! * 1000,
                    ).toLocal())}",
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          fontSize: 11.sp,
                          color: AppColors.white,
                        ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
