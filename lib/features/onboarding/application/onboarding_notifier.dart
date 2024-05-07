import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_app/features/onboarding/domain/onboarding_state.dart';
import 'package:weather_app/features/onboarding/infra/onboarding_services.dart';

class OnboardingNotifier extends StateNotifier<OnboardingState> {
  final OnboardingServices onboardingServices;
  OnboardingNotifier(
    super.state, {
    required this.onboardingServices,
  });

  void showOrHideOnboarding() async {
    state = await onboardingServices.showOrHideOnboarding()
        ? const OnboardingState.showOnboarding()
        : const OnboardingState.hideOnboarding();
  }
}
