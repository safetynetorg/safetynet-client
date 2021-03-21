import 'package:background_location/background_location.dart';

import '../../constants/api_constants.dart';
import '../helpers/get_token.dart';
import 'rest_api_service.dart';

Future<void> backgroundLocation() async {
  await BackgroundLocation.startLocationService();
  BackgroundLocation.getLocationUpdates((location) async {
    await _updateLocation(location);
  });
}

Future<void> _updateLocation(Location location) async {
  var token = await getToken();
  var body = <String, dynamic>{
    'id': token,
    'lat': location.latitude,
    'lon': location.longitude
  };
  RestCalls.put(UPDATE_LOCATION, body);
}
