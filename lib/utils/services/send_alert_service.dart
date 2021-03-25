import '../helpers/get_token.dart';
import 'rest_api_service.dart';
import 'location_service.dart';
import '../../constants/api_constants.dart';
import '../../modules/models/device.dart';

Future<void> sendAlert() async {
  var position = await determinePosition();
  var body =
      Device(await getToken(), lat: position.latitude, lon: position.longitude);

  await RestCalls.post(ALERT, body: body.toJson());
}
