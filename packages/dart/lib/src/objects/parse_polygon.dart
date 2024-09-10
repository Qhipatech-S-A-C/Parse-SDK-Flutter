part of '../../parse_server_sdk.dart';

class ParsePolygon {
  ParsePolygon({this.coordinates = const []});

  List<ParseGeoPoint> coordinates;

  Map<String, dynamic> toJson({bool full = false, bool forApiRQ = false}) {
    final List<List<double>> points = <List<double>>[];
    for (final ParseGeoPoint point in coordinates) {
      points.add(<double>[point.latitude, point.longitude]);
    }

    return <String, dynamic>{
      '__type': 'Polygon',
      'coordinates': points,
    };
  }

  @override
  String toString() {
    return 'coordinates: $coordinates';
  }
}
