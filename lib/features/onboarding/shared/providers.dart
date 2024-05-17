import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_app/core/shared/providers.dart';
import 'package:weather_app/features/onboarding/application/onboarding_notifier.dart';
import 'package:weather_app/features/onboarding/domain/onboarding_state.dart';
import 'package:weather_app/features/onboarding/infra/onboarding_services.dart';

final onboardingServicesProvider = Provider<OnboardingServices>(
  (ref) => OnboardingServices(
    getStorage: ref.watch(getStorageProvider),
  ),
);

final onboardingNotifierProvider =
    StateNotifierProvider<OnboardingNotifier, OnboardingState>(
  (ref) {
    return OnboardingNotifier(
      const OnboardingState.initial(),
      onboardingServices: ref.watch(
        onboardingServicesProvider,
      ),
    );
  },
);
