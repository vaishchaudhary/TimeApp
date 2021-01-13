class WeatherModel {
  double latitude;
  double longitude;
  String timezone;
  double temperature;
  int time;
  String summary;
  String icon;
  int humidity;//int for humidity
  String units; // weather units
  List<WeatherAlert> alerts; // weather alerts
  String hourlySummary;
  List<WeatherData> hourly;
  List<WeatherData> daily;
}
class WeatherAlert {
  String title;
  int time;
  int expires;
  String description;
  String uri;
}
class WeatherData {
  int time;
  String summary;
  String icon;
  int sunriseTime;
  int sunsetTime;
  double temperature;
  double apparentTemperature;
  String precipType;
  double precipProbability;
  double temperatureLow;
  double temperatureHigh;
  double windSpeed;
  int windBearing;
  double uvIndex;
  int humidity;//int for humidity
}
