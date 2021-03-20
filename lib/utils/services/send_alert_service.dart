import 'package:http/http.dart' as http;

import 'position_service.dart';
import 'rest_api_service.dart';
import '../../utils/helpers/get_id.dart';
import '../../constants/api_constants.dart';
import '../../modules/models/device.dart';

Future<int> sendAlert() async {
  final location = await determinePosition();

  var body =
      Device(await getId(), lat: location.latitude, lon: location.longitude);

  http.Response response = await RestCalls.post(ALERT, body: body.toJson());

  return int.parse(response.body);
}
