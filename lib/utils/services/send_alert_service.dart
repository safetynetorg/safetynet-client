import 'package:http/http.dart' as http;

import '../helpers/get_token.dart';
import 'rest_api_service.dart';
import '../../constants/api_constants.dart';
import '../../modules/models/device.dart';

Future<int> sendAlert() async {
  var body = Device(await getToken(), lat: 0, lon: 0);

  http.Response response = await RestCalls.post(ALERT, body: body.toJson());

  return int.parse(response.body);
}
