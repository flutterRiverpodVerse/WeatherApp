import 'package:get_storage/get_storage.dart';
import 'package:weather_app/core/constants/app_config.dart';
import 'package:weather_app/features/onboarding/domain/ab_onboarding_services.dart';

class OnboardingServices extends AbOnboardingServices {
  final GetStorage getStorage;

  OnboardingServices({
    required this.getStorage,
  });
  @override
  Future<bool> showOrHideOnboarding() async {
    final data = await getStorage.read(AppConfig.visitedOnboarding);
    return data ?? true;
  }
}
