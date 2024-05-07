import 'package:geolocator/geolocator.dart';
import 'package:weather_app/core/constants/app_colors.dart';
import 'package:weather_app/core/constants/app_constants.dart';

class LocationService {
  Future<bool> handleLocationPermission() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      AppConstants.showSnackbar(
        backgroundColor: AppColors.error,
        text: 'Location services are disabled. Please enable the services',
      );
      return false;
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        AppConstants.showSnackbar(
          backgroundColor: AppColors.error,
          text: 'Location permissions are denied',
        );
        return false;
      }
    }
    if (permission == LocationPermission.deniedForever) {
      AppConstants.showSnackbar(
        backgroundColor: AppColors.error,
        text:
            'Location permissions are permanently denied, we cannot fetch the weather.',
      );
      return false;
    }
    return true;
  }
}
