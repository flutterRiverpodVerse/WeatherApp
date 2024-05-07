import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/core/constants/app_colors.dart';
import 'package:weather_app/core/constants/app_config.dart';
import 'package:weather_app/core/constants/app_constants.dart';
import 'package:weather_app/core/router/app_router.dart';
import 'package:weather_app/core/theme/app_theme.dart';
import 'package:weather_app/gen/assets.gen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulHookConsumerWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  final _appRouter = AppRouter();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        cacheAssets();
      },
    );
    super.initState();
  }

  cacheAssets() {
    precacheImage(AssetImage(Assets.images.stormImage.path), context);
    AssetLottie(Assets.animations.thunderstormWeather).load();
    AssetLottie(Assets.animations.drizzleWeather).load();
    AssetLottie(Assets.animations.rainyWeather).load();
    AssetLottie(Assets.animations.snowWeather).load();
    AssetLottie(Assets.animations.sunnyWeather).load();
    AssetLottie(Assets.animations.cloudyWeather).load();
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = AppConstants.isDarkMode(context: context);
    SystemChrome.setSystemUIOverlayStyle(
      isDarkMode
          ? const SystemUiOverlayStyle(
              statusBarColor: AppColors.black,
              statusBarIconBrightness: Brightness.light,
              systemNavigationBarColor: AppColors.black,
            )
          : const SystemUiOverlayStyle(
              statusBarColor: AppColors.white,
              statusBarIconBrightness: Brightness.dark,
              systemNavigationBarColor: AppColors.black,
            ),
    );
    final MediaQueryData data = MediaQuery.of(context);
    return MediaQuery(
      data: data.copyWith(
        textScaler: const TextScaler.linear(
          1,
        ),
      ),
      child: ScreenUtilInit(
        designSize: const Size(
          360,
          690,
        ),
        minTextAdapt: true,
        useInheritedMediaQuery: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp.router(
            title: 'Todo Riverpod',
            debugShowCheckedModeBanner: false,
            themeMode: ThemeMode.system,
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            routerConfig: _appRouter.config(),
            scaffoldMessengerKey: AppConfig.rootScaffoldMessengerKey,
          );
        },
      ),
    );
  }
}
