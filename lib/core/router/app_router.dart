import 'package:auto_route/auto_route.dart';
import 'package:weather_app/features/home/presentation/home_screen.dart';
import 'package:weather_app/features/onboarding/presentation/onboarding_screen.dart';
import 'package:weather_app/splash_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<CustomRoute> get routes => [
        CustomRoute(
          initial: true,
          page: SplashRoute.page,
        ),
        CustomRoute(
          page: OnboardingRoute.page,
        ),
        CustomRoute(
          page: HomeRoute.page,
        ),
      ];
}
