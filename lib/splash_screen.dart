import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/core/router/app_router.dart';
import 'package:weather_app/core/shared/providers.dart';
import 'package:weather_app/features/onboarding/domain/onboarding_state.dart';
import 'package:weather_app/features/onboarding/shared/providers.dart';
import 'package:weather_app/gen/assets.gen.dart';

final initialProvider = FutureProvider<Unit>(
  (ref) {
    final notifier = ref.read(onboardingNotifierProvider.notifier);
    notifier.showOrHideOnboarding();
    return unit;
  },
);

@RoutePage()
class SplashScreen extends HookConsumerWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      ref.read(locationServiceProvider).handleLocationPermission();
      return null;
    }, []);
    ref.listen(initialProvider, (previous, next) {});
    ref.listen<OnboardingState>(
      onboardingNotifierProvider,
      (prev, next) {
        Future.delayed(
          const Duration(milliseconds: 2500),
          () {
            next.maybeMap(
              showOnboarding: (value) {
                AutoRouter.of(context).pushAndPopUntil(
                  const OnboardingRoute(),
                  predicate: (route) => false,
                );
              },
              hideOnboarding: (value) {
                AutoRouter.of(context).pushAndPopUntil(
                  const HomeRoute(),
                  predicate: (route) => false,
                );
              },
              orElse: () {},
            );
          },
        );
      },
    );
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(
            Assets.animations.splashAnimation,
          ),
        ],
      ),
    );
  }
}
