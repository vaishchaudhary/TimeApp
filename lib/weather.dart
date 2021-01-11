class WeatherModel
{
  String name;
  int dt;
  List<WeatherCondition> weather;
  int visibility;
  WeatherData main;
  Wind wind;
  Clouds clouds;
}
class WeatherCondition
{
  String main;
  String description;
  String icon;
}
class WeatherData {
  double temp;
  double pressure;
  int humidity;
  double temp_min;
  double temp_max;
}
class Wind {
  double speed;
}
class Clouds {
  int all;
}