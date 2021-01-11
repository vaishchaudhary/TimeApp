class WeatherModel {
  String name;
  int dt;
  List<WeatherCondition> weather;
  int visibility;

  double temp;
  double pressure;
  int humidity;
  double temp_min;
  double temp_max;
  double speed;
  int all;
}

class WeatherCondition {
  String main;
  String description;
  String icon;
}
