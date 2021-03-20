import 'package:http/http.dart' as http;

import 'position_service.dart';
import 'rest_api_service.dart';
import '../../constants/api_constants.dart';
import '../../modules/models/lat_lon.dart';

Future<String> newDevice() async {
  final location = await determinePosition();
  var body = LatLon(lat: location.latitude, lon: location.longitude).toJson();

  http.Response response = await RestCalls.post(NEW_DEVICE, body: body);

  return response.body;
}
