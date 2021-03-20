class LatLon {
  final double lat;
  final double lon;

  LatLon({this.lat, this.lon});

  Map<String, dynamic> toJson() {
    return <String, dynamic>{'lat': lat, 'lon': lon};
  }
}
