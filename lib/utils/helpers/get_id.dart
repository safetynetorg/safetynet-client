import 'package:client/utils/services/new_device_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<String> getId() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  if (prefs.getString('id') == null) {
    prefs.setString('id', await newDevice());
  }
  return prefs.getString('id');
}
