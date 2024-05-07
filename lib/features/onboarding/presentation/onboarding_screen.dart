// ignore_for_file: unused_result

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_app/core/constants/app_config.dart';
import 'package:weather_app/core/router/app_router.dart';
import 'package:weather_app/core/shared/providers.dart';
import 'package:weather_app/core/widgets/app_loader.dart';
import 'package:weather_app/core/widgets/custom_elevated_button.dart';
import 'package:weather_app/features/onboarding/domain/onboarding_state.dart';
import 'package:weather_app/features/onboarding/shared/providers.dart';
import 'package:weather_app/gen/assets.gen.dart';

@RoutePage()
class OnboardingScreen extends HookConsumerWidget {
  const OnboardingScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<OnboardingState>(
      onboardingNotifierProvider,
      (prev, next) {
        Future.delayed(
          const Duration(milliseconds: 200),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30.h,
            ),
            Image.asset(
              Assets.images.stormImage.path,
              height: 350.h,
              width: 1.sw,
              fit: BoxFit.fitWidth,
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Daily Weather\nForecasts",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w700,
                  ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Stay Ahead of the Forecast with Weather App",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    fontSize: 12.sp,
                  ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 30.w,
              ),
              child: CustomElevatedButton(
                height: 40.h,
                text: "Get Started",
                onPressed: () {
                  ref
                      .read(getStorageProvider)
                      .write(AppConfig.visitedOnboarding, false);
                  AppLoader.openLoadingDialog(context: context);
                  Future.delayed(
                    const Duration(milliseconds: 100),
                    () {
                      ref
                          .read(onboardingNotifierProvider.notifier)
                          .showOrHideOnboarding();
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
