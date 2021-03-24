import 'package:http/http.dart' as http;

import 'location_service.dart';
import 'rest_api_service.dart';
import '../../constants/api_constants.dart';
import '../../modules/models/device.dart';

Future<String> newDevice(String token) async {
  var location = await determinePosition();
  var body =
      Device(token, lat: location.latitude, lon: location.longitude).toJson();

  http.Response response = await RestCalls.post(NEW_DEVICE, body: body);

  return response.body;
}
