import 'package:get_storage/get_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_app/core/services/location_service.dart';

final getStorageProvider = Provider<GetStorage>(
  (ref) => GetStorage(),
);

final locationServiceProvider = Provider<LocationService>(
  (ref) {
    return LocationService();
  },
);
