import 'package:http/http.dart' as http;

import 'position_service.dart';
import 'rest_api_service.dart';
import '../../utils/helpers/get_id.dart';
import '../../constants/api_constants.dart';
import '../../modules/models/device.dart';

Future<Map<String, dynamic>> checkForAlert() async {
  var id = await getId();
  var body = <String, dynamic>{'id': id};

  var response = RestCalls.get('$CHECK/$id');
}
