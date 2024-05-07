import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_state.freezed.dart';

@freezed
class OnboardingState with _$OnboardingState {
  const factory OnboardingState.initial() = _Initial;
  const factory OnboardingState.showOnboarding() = _ShowOnboarding;
  const factory OnboardingState.hideOnboarding() = _HideOnboarding;
}
