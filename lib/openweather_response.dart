import 'package:json_annotation/json_annotation.dart';
part 'openweather_response.g.dart';
@JsonSerializable()
class WeatherResponse
{
  factory WeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$WeatherResponseFromJson(json);
  Map<String, dynamic> toJson() => _$WeatherResponseToJson(this);
  @JsonKey(name: 'coord')
  Coord coord;
  @JsonKey(name: 'name')
  String name;
  @JsonKey(name: 'dt')
  int dt;
  @JsonKey(name: 'weather')
  List<Weather> weather;
  @JsonKey(name: 'visibiblity')
  int visibility;
  @JsonKey(name: 'main')
  Main main;
  @JsonKey(name: 'wind')
  Wind wind;
  @JsonKey(name: 'clouds')
  Clouds clouds;
  @JsonKey(name: 'base')
  String base;
  @JsonKey(name: 'sys')
  Sys sys;
  @JsonKey(name: 'timezone')
  int timezone;
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'cod')
  int cod;
  WeatherResponse({this.coord,this.main,this.id,this.clouds,this.name,this.base,this.cod,this.dt,this.sys,this.timezone,this.visibility,this.weather,this.wind});
}
@JsonSerializable()
class Coord
{
  factory Coord.fromJson(Map<String, dynamic> json) =>
      _$CoordFromJson(json);

  Map<String, dynamic> toJson() => _$CoordToJson(this);
  @JsonKey(name: 'lon')
  double lon;
  @JsonKey(name: 'lat')
  double lat;
  Coord({this.lon,this.lat});
}
@JsonSerializable()
class Weather
{
  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherToJson(this);
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'main')
   String main;
  @JsonKey(name: 'description')
  String description;
  @JsonKey(name: 'icon')
  String  icon;
  Weather({this.icon,this.description,this.id,this.main});
}
@JsonSerializable()
class Main
{
  factory Main.fromJson(Map<String, dynamic> json) =>
      _$MainFromJson(json);

  Map<String, dynamic> toJson() => _$MainToJson(this);
  @JsonKey(name: 'temp')
  double temp;
  @JsonKey(name: 'feels_like')
  double feels_like;
  @JsonKey(name: 'pressure')
  double pressure;
  @JsonKey(name: 'humidity')
  int humidity;
  @JsonKey(name: 'temp_min')
  double temp_min;
  @JsonKey(name: 'temp_max')
  double temp_max;
  Main({this.temp,this.feels_like,this.humidity,this.pressure,this.temp_max,this.temp_min});
}
@JsonSerializable()
class Wind
{
  factory Wind.fromJson(Map<String, dynamic> json) =>
      _$WindFromJson(json);

  Map<String, dynamic> toJson() => _$WindToJson(this);
  @JsonKey(name:'speed')
  double speed;
  @JsonKey(name:'deg')
  int deg;
  Wind({this.speed,this.deg});
}
@JsonSerializable()
class Clouds
{
  factory Clouds.fromJson(Map<String, dynamic> json) =>
      _$CloudsFromJson(json);

  Map<String, dynamic> toJson() => _$CloudsToJson(this);
  @JsonKey(name: 'all')
  int all;
  Clouds({this.all});
}
@JsonSerializable()
class Sys
{
  factory Sys.fromJson(Map<String, dynamic> json) =>
      _$SysFromJson(json);

  Map<String, dynamic> toJson() => _$SysToJson(this);
  @JsonKey(name: 'type')
  int type;
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'country')
  String country;
  @JsonKey(name: 'sunrise')
  int sunrise;
  @JsonKey(name: 'sunset')
  int sunset;
  Sys({this.type, this.id,this.country,this.sunrise,this.sunset});
}
