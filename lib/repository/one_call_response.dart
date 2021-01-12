import 'package:json_annotation/json_annotation.dart';
import 'package:json_serializable/json_serializable.dart';
part 'one_call_response.g.dart';

@JsonSerializable()
class Weather {
  double latitude;
  double longitude;
  String timezone;
  double temperature;
  int time;
  String summary;
  String icon;
  double humidity;
  String units; // weather units
  List<WeatherAlert> alerts; // weather alerts
  String hourlySummary;
  List<WeatherData> hourly;
  List<WeatherData> daily;
}
