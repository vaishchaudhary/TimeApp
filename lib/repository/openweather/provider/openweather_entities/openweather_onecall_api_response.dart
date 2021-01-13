import 'package:json_annotation/json_annotation.dart';
import 'package:json_serializable/json_serializable.dart';
part 'openweather_onecall_api_response.g.dart';
@JsonSerializable()
class WeatherResponse
{
  factory WeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$WeatherResponseFromJson(json);
  Map<String, dynamic> toJson() => _$WeatherResponseToJson(this);
  @JsonKey(name: 'lat')
  double lat;
  @JsonKey(name: 'lon')
  double  lon;
  @JsonKey(name: 'timezone')
  String timezone;
  @JsonKey(name: 'timezone_offset')
  int  timezoneOffset;
  @JsonKey(name: 'current')
  Current current;
  @JsonKey(name: 'minutely')
  List<Minutely> minutely;
  @JsonKey(name: 'hourly')
  List<Hourly> hourly;
  @JsonKey(name: 'daily')
  List<Daily> daily;

  WeatherResponse({this.lat,this.lon,this.timezone,this.timezoneOffset,this.current,this.minutely,this.hourly,this.daily});
}
@JsonSerializable()
class Current
{
  factory Current.fromJson(Map<String, dynamic> json) =>
      _$CurrentFromJson(json);
  Map<String, dynamic> toJson() => _$CurrentToJson(this);
  @JsonKey(name: 'dt')
  int dt;
  @JsonKey(name: 'sunrise')
  int sunrise;
  @JsonKey(name: 'sunset')
  int sunset;
  @JsonKey(name: 'temp')
  double temp;
  @JsonKey(name: 'feels_like')
  double feelsLike;
  @JsonKey(name: 'pressure')
  int pressure;
  @JsonKey(name: 'humidity')
  int humidity;
  @JsonKey(name: 'dew_point')
  double dewPoint;
  @JsonKey(name: 'uvi')
  int uvi;
  @JsonKey(name: 'clouds')
  int clouds;
  @JsonKey(name: 'visibility')
  int visibility;
  @JsonKey(name: 'wind_speed')
  double windSpeed;
  @JsonKey(name: 'wind_deg')
  int  windDeg;
  @JsonKey(name: 'weather')
  List<Weather> weather;
  Current({this.dt,this.sunrise,this.sunset,this.temp,this.feelsLike,this.pressure,this.humidity,this.dewPoint,this.uvi,this.clouds,this.visibility,this.weather,this.windSpeed,this.windDeg});
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
  @JsonKey(name:'icon')
  String icon;
  Weather({this.id,this.main,this.description,this.icon});
}
@JsonSerializable()
class Minutely
{
  factory Minutely.fromJson(Map<String, dynamic> json) =>
      _$MinutelyFromJson(json);
  Map<String, dynamic> toJson() => _$MinutelyToJson(this);
  @JsonKey(name:'dt')
  int dt;
  @JsonKey(name:'precipitation')
  int precipitation;
  Minutely({this.dt,this.precipitation});
}
@JsonSerializable()
class Hourly
{
  factory Hourly.fromJson(Map<String, dynamic> json) =>
      _$HourlyFromJson(json);
  Map<String, dynamic> toJson() => _$HourlyToJson(this);
  @JsonKey(name: 'dt')
  int dt;
  @JsonKey(name: 'temp')
  double temp;
  @JsonKey(name :'feels_like')
  double feels_like;
  @JsonKey(name: 'pressure')
  int pressure;
  @JsonKey(name :'humidity')
  int humidity;
  @JsonKey(name: 'dew_point')
  int dew_point;
  @JsonKey(name: 'uvi')
  double uvi;
  @JsonKey(name :'clouds')
  int clouds;
  @JsonKey(name: 'visibility')
  int visibility;
  @JsonKey(name: 'double')
  double wind_speed;
  @JsonKey(name: 'wind_deg')
  int wind_deg;
  @JsonKey(name: 'weather')
  List<Weather> weather;
  @JsonKey(name:'pop')
  double pop;
  Hourly({this.dt,this.temp,this.feels_like,this.pressure,this.humidity,this.dew_point,this.uvi,this.clouds,this.visibility,this.wind_speed,this.wind_deg,this.weather,this.pop});
}
@JsonSerializable()
class Daily
{
  factory Daily.fromJson(Map<String, dynamic> json) =>
      _$DailyFromJson(json);
  Map<String, dynamic> toJson() => _$DailyToJson(this);
  @JsonKey(name: 'dt')
  int  dt;
  @JsonKey(name: 'sunrise')
  int  sunrise;
  @JsonKey(name: 'sunset')
  int  sunset;
  @JsonKey(name: 'temp')
  Temp temp;
  @JsonKey(name: 'feels_like')
  FeelsLike feelsLike;
  @JsonKey(name: 'pressure')
  int  pressure;
  @JsonKey(name: 'humidity')
  int  humidity;
  @JsonKey(name: 'dew_point')
  int  dewPoint;
  @JsonKey(name: 'wind_speed')
  double  windSpeed;
  @JsonKey(name: 'wind_deg')
  int windDeg;
  @JsonKey(name: 'weather')
  List<Weather> weather;
  @JsonKey(name: 'clouds')
  int clouds;
  @JsonKey(name: 'pop')
  double  pop;
  @JsonKey(name: 'uvi')
  double  uvi;
  Daily({this.dt,this.sunrise,this.sunset,this.temp,this.feelsLike,this.pressure,this.humidity,this.dewPoint,this.windSpeed,this.windDeg,this.weather,this.clouds,this.pop,this.uvi});
}
@JsonSerializable()
class Temp
{
  factory Temp.fromJson(Map<String, dynamic> json) =>
      _$TempFromJson(json);
  Map<String, dynamic> toJson() => _$TempToJson(this);
  @JsonKey(name: 'day')
   double day;
  @JsonKey(name: 'min')
  double min;
  @JsonKey(name: 'max')
  double max;
  @JsonKey(name: 'night')
  double night;
  @JsonKey(name: 'eve')
  double eve;
  @JsonKey(name: 'morn')
  double morn;
  Temp({this.day,this.min,this.max,this.night,this.eve,this.morn});
}
@JsonSerializable()
class FeelsLike
{
  factory FeelsLike.fromJson(Map<String, dynamic> json) =>
      _$FeelsLikeFromJson(json);
  Map<String, dynamic> toJson() => _$FeelsLikeToJson(this);
  @JsonKey(name: 'day')
  double day;
  @JsonKey(name: 'night')
  double night;
  @JsonKey(name: 'eve')
  double eve;
  @JsonKey(name: 'morn')
  double morn;
  FeelsLike({this.day,this.night,this.eve,this.morn});
}
