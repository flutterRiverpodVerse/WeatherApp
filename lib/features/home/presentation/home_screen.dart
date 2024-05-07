import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_app/core/constants/app_colors.dart';
import 'package:weather_app/core/helpers/shimmers/container_shimmer.dart';
import 'package:weather_app/core/widgets/custom_app_bar.dart';
import 'package:weather_app/features/home/domain/weather_forecast_model.dart';
import 'package:weather_app/features/home/shared/providers.dart';
import 'package:weather_app/features/home/widgets/weather_container_widget.dart';
import 'package:weather_app/features/home/widgets/weather_forecast_container_widget.dart';

@RoutePage()
class HomeScreen extends StatefulHookConsumerWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final now = useState<DateTime>(DateTime.now().toLocal());
    final greeting = useState<String>("");
    final code = useState<int>(200);

    int hour = now.value.hour;

    if (hour < 12) {
      greeting.value = 'Good morning';
    } else if (hour < 18) {
      greeting.value = 'Good afternoon';
    } else {
      greeting.value = 'Good evening';
    }

    final currentAddress = useState<String?>(null);

    final weather = ref.watch(fetchWeatherProvider);

    final weatherForecast =
        useState<AsyncValue<List<WeatherForecastModel>>?>(null);

    useEffect(
      () {
        Future.delayed(
          const Duration(microseconds: 100),
          () async {
            await Geolocator.getCurrentPosition(
              desiredAccuracy: LocationAccuracy.high,
            ).then((currentPosition) async {
              await placemarkFromCoordinates(
                currentPosition.latitude,
                currentPosition.longitude,
              ).then((locationAddress) {
                currentAddress.value =
                    "${locationAddress[0].subLocality} | ${locationAddress[0].locality}, ${locationAddress[0].administrativeArea}, ${locationAddress[0].country}";
              });
            });
          },
        );
        return null;
      },
      [],
    );

    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: customAppBar(
        context: context,
        centerTitle: true,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              greeting.value,
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    fontSize: 14.sp,
                    color: AppColors.white.withOpacity(0.6),
                  ),
            ),
            if (currentAddress.value == null)
              ContainerShimmer(
                height: 20.h,
                width: 100.w,
                radius: 5.r,
              )
            else
              Text(
                "📍${currentAddress.value}",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontSize: 15.sp,
                      color: AppColors.white,
                    ),
              ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10.w,
              vertical: 10.h,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 5.h,
                ),
                weather.when(
                  data: (weatherData) {
                    code.value = weatherData.weather!.first.id!;
                    weatherForecast.value =
                        ref.watch(fetchWeatherForecastProvider);
                    return WeatherContainerWidget(
                      weatherData: weatherData,
                      currentAddress: currentAddress,
                      code: code,
                    );
                  },
                  error: (error, stackTrace) {
                    return Center(
                      child: Text(
                        "Error",
                        style:
                            Theme.of(context).textTheme.headlineSmall!.copyWith(
                                  color: AppColors.white,
                                ),
                      ),
                    );
                  },
                  loading: () {
                    return Column(
                      children: [
                        ContainerShimmer(
                          height: 200.h,
                          width: 1.sw,
                          radius: 8.r,
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                      ],
                    );
                  },
                ),
                if (weatherForecast.value != null)
                  weatherForecast.value!.when(
                    data: (weatherForecastData) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10.h,
                          ),
                          RichText(
                            text: TextSpan(
                              text: "Next 5 days forecaset/",
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineLarge!
                                  .copyWith(
                                    fontSize: 18.sp,
                                    color: AppColors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                              children: [
                                TextSpan(
                                  text: "(3 hours interval)",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineLarge!
                                      .copyWith(
                                        fontSize: 13.sp,
                                        color: AppColors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          ListView.builder(
                            physics: const ScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: weatherForecastData.length,
                            itemBuilder: (context, index) {
                              final weatherForecast =
                                  weatherForecastData[index];
                              return WeatherForecastContainerWidget(
                                weatherForecastModel: weatherForecast,
                              );
                            },
                          ),
                        ],
                      );
                    },
                    error: (error, stackTrace) {
                      return const Text(
                        "error",
                      );
                    },
                    loading: () {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10.h,
                          ),
                          ContainerShimmer(
                            height: 15.h,
                            width: 200.w,
                            radius: 5.r,
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          ListView.builder(
                            shrinkWrap: true,
                            physics: const ScrollPhysics(),
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.only(
                                  bottom: 10.h,
                                ),
                                child: ContainerShimmer(
                                  height: 60.h,
                                  width: 1.sw,
                                  radius: 8.r,
                                ),
                              );
                            },
                          ),
                        ],
                      );
                    },
                  ),
                SizedBox(
                  height: 40.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
