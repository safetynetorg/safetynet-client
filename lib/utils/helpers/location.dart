import 'package:shared_preferences/shared_preferences.dart';

Future<String> setLocation(double lat, double lon) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setDouble('lat', lat);
  prefs.setDouble('lon', lon);
  return prefs.getString('id');
}

Future<Map<String, double>> getLocation(double lat, double lon) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return <String, double>{
    'lat': prefs.getDouble('lat'),
    'lon': prefs.getDouble('lon')
  };
}
