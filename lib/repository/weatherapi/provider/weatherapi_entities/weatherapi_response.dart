import 'dart:core';
import 'package:json_annotation/json_annotation.dart';
part 'weatherapi_response.g.dart';
@JsonSerializable()
class WeatherApiResponse {
  factory WeatherApiResponse.fromJson(Map<String, dynamic> json) =>
      _$WeatherApiResponseFromJson(json);
  Map<String, dynamic> toJson() => _$WeatherApiResponseToJson(this);

  @JsonKey(name: 'location')
  Location location;
  @JsonKey(name: 'current')
  Current current;
  @JsonKey(name: 'forecast')
  Forecast forecast;
  @JsonKey(name: 'alerts')
  Alerts alerts;

  WeatherApiResponse({this.location, this.current, this.forecast, this.alerts});
}

@JsonSerializable()
class Current {
  factory Current.fromJson(Map<String, dynamic> json) =>
      _$CurrentFromJson(json);
  Map<String, dynamic> toJson() => _$CurrentToJson(this);
  @JsonKey(name: 'last_updated_epoch')
  double last_updated_epoch;
  @JsonKey(name: 'last_updated')
  double last_updated;
  @JsonKey(name: 'temp_c')
  double temp_c;
  @JsonKey(name: 'temp_f')
  double temp_f;
  @JsonKey(name: 'condition')
  Condition condition;
  @JsonKey(name: 'wind_mph')
  double wind_mph;
  @JsonKey(name: 'wind_kph')
  double wind_kph;
  @JsonKey(name: 'wind_degree')
  double wind_degree;
  @JsonKey(name: 'wind_dir')
  String wind_dir;
  @JsonKey(name: 'pressure_mb')
  double pressure_mb;
  @JsonKey(name: 'pressure_in')
  double pressure_in;
  @JsonKey(name: 'precip_mm')
  double precip_mm;
  @JsonKey(name: 'precip_in')
  double precip_in;
  @JsonKey(name: 'humidity')
  double humidity;
  @JsonKey(name: 'cloud')
  double cloud;
  @JsonKey(name: 'feelslike_c')
  double feelslike_c;
  @JsonKey(name: 'feelslike_f')
  double feelslike_f;
  @JsonKey(name: 'vis_km')
  double vis_km;
  @JsonKey(name: 'vis_miles')
  double vis_miles;
  @JsonKey(name: 'uv')
  double uv;
  @JsonKey(name: 'gust_mph')
  double gust_mph;
  @JsonKey(name: 'gust_kph')
  double gust_kph;

  Current(
      {this.last_updated_epoch,
        this.last_updated,
        this.temp_c,
        this.temp_f,
        this.condition,
        this.wind_mph,
        this.wind_kph,
        this.wind_degree,
        this.wind_dir,
        this.pressure_mb,
        this.pressure_in,
        this.precip_mm,
        this.precip_in,
        this.humidity,
        this.cloud,
        this.feelslike_c,
        this.feelslike_f,
        this.vis_km,
        this.vis_miles,
        this.uv,
        this.gust_mph,
        this.gust_kph});
}

@JsonSerializable()
class Location {
  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
  Map<String, dynamic> toJson() => _$LocationToJson(this);
  @JsonKey(name: 'name')
  String name;
  @JsonKey(name: 'region')
  String region;
  @JsonKey(name: 'country')
  String country;
  @JsonKey(name: 'lat')
  double lat;
  @JsonKey(name: 'lon')
  double lon;
  @JsonKey(name: 'tz_id')
  String tz_id;
  @JsonKey(name: 'localtime_epoch')
  double localtime_epoch;
  @JsonKey(name: 'localtime')
  String localtime;

  Location(
      {this.name,
        this.region,
        this.country,
        this.lat,
        this.lon,
        this.tz_id,
        this.localtime_epoch,
        this.localtime});
}

@JsonSerializable()
class Condition {
  factory Condition.fromJson(Map<String, dynamic> json) =>
      _$ConditionFromJson(json);
  Map<String, dynamic> toJson() => _$ConditionToJson(this);
  @JsonKey(name: 'text')
  String text;
  @JsonKey(name: 'icon')
  String icon;
  @JsonKey(name: 'code')
  double code;

  Condition({this.text, this.icon, this.code});
}

@JsonSerializable()
class Forecast {
  factory Forecast.fromJson(Map<String, dynamic> json) =>
      _$ForecastFromJson(json);
  Map<String, dynamic> toJson() => _$ForecastToJson(this);
  @JsonKey(name: 'forecastday')
  List<Forecastday> forecastday;

  Forecast({this.forecastday});
}

@JsonSerializable()
class Forecastday {
  factory Forecastday.fromJson(Map<String, dynamic> json) =>
      _$ForecastdayFromJson(json);
  Map<String, dynamic> toJson() => _$ForecastdayToJson(this);
  @JsonKey(name: 'date')
  String date;
  @JsonKey(name: 'date_epoch')
  double date_epoch;
  @JsonKey(name: 'day')
  Day day;
  @JsonKey(name: 'astro')
  Astro astro;
  @JsonKey(name: 'hour')
  List<Hour> hour;

  Forecastday({this.date, this.date_epoch, this.day, this.astro, this.hour});
}

@JsonSerializable()
class Day {
  factory Day.fromJson(Map<String, dynamic> json) => _$DayFromJson(json);
  Map<String, dynamic> toJson() => _$DayToJson(this);
  @JsonKey(name: 'maxtemp_c')
  double maxtemp_c;
  @JsonKey(name: 'maxtemp_f')
  double maxtemp_f;
  @JsonKey(name: 'mintemp_c')
  double mintemp_c;
  @JsonKey(name: 'mintemp_f')
  double mintemp_f;
  @JsonKey(name: 'avgtemp_c')
  double avgtemp_c;
  @JsonKey(name: 'avgtemp_f')
  double avgtemp_f;
  @JsonKey(name: 'maxwind_mph')
  double maxwind_mph;
  @JsonKey(name: 'maxwind_kph')
  double maxwind_kph;
  @JsonKey(name: 'totalprecip_mm')
  double totalprecip_mm;
  @JsonKey(name: 'totalprecip_in')
  double totalprecip_in;
  @JsonKey(name: 'avgvis_km')
  double avgvis_km;
  @JsonKey(name: 'avgvis_miles')
  double avgvis_miles;
  @JsonKey(name: 'avghumidity')
  double avghumidity;
  @JsonKey(name: 'daily_will_it_rain')
  double daily_will_it_rain;
  @JsonKey(name: 'daily_chance_of_rain')
  double daily_chance_of_rain;
  @JsonKey(name: 'daily_will_it_snow')
  double codaily_will_it_snowde;
  @JsonKey(name: 'daily_chance_of_snow')
  double daily_chance_of_snow;
  @JsonKey(name: 'condition')
  Condition condition;
  @JsonKey(name: 'uv')
  double uv;

  Day(
      {this.maxtemp_c,
        this.maxtemp_f,
        this.mintemp_c,
        this.mintemp_f,
        this.avgtemp_c,
        this.avgtemp_f,
        this.maxwind_mph,
        this.maxwind_kph,
        this.totalprecip_mm,
        this.totalprecip_in,
        this.avgvis_km,
        this.avgvis_miles,
        this.avghumidity,
        this.daily_will_it_rain,
        this.daily_chance_of_rain,
        this.codaily_will_it_snowde,
        this.daily_chance_of_snow,
        this.condition,
        this.uv});
}

@JsonSerializable()
class Astro {
  factory Astro.fromJson(Map<String, dynamic> json) => _$AstroFromJson(json);
  Map<String, dynamic> toJson() => _$AstroToJson(this);
  @JsonKey(name: 'sunrise')
  String sunrise;
  @JsonKey(name: 'sunset')
  String sunset;
  @JsonKey(name: 'moonrise')
  String moonrise;
  @JsonKey(name: 'moonset')
  String moonset;
  @JsonKey(name: 'moon_phase')
  String moon_phase;
  @JsonKey(name: 'moon_illumination')
  String moon_illumination;

  Astro(
      {this.sunrise,
        this.sunset,
        this.moonrise,
        this.moonset,
        this.moon_phase,
        this.moon_illumination});
}

@JsonSerializable()
class Hour {
  factory Hour.fromJson(Map<String, dynamic> json) => _$HourFromJson(json);
  Map<String, dynamic> toJson() => _$HourToJson(this);
  @JsonKey(name: 'time_epoch')
  double time_epoch;
  @JsonKey(name: 'time')
  String time;
  @JsonKey(name: 'temp_c')
  double temp_c;
  @JsonKey(name: 'temp_f')
  double temp_f;
  @JsonKey(name: 'condition')
  Condition condition;
  @JsonKey(name: 'wind_mph')
  double wind_mph;
  @JsonKey(name: 'wind_kph')
  double wind_kph;
  @JsonKey(name: 'wind_degree')
  double wind_degree;
  @JsonKey(name: 'wind_dir')
  String wind_dir;
  @JsonKey(name: 'pressure_mb')
  double pressure_mb;
  @JsonKey(name: 'pressure_in')
  double pressure_in;
  @JsonKey(name: 'precip_mm')
  double precip_mm;
  @JsonKey(name: 'precip_in')
  double precip_in;
  @JsonKey(name: 'humidity')
  double humidity;
  @JsonKey(name: 'cloud')
  double cloud;
  @JsonKey(name: 'feelslike_c')
  double feelslike_c;
  @JsonKey(name: 'feelslike_f')
  double feelslike_f;
  @JsonKey(name: 'windchill_c')
  double windchill_c;
  @JsonKey(name: 'windchill_f')
  double windchill_f;
  @JsonKey(name: 'heatindex_c')
  double heatindex_c;
  @JsonKey(name: 'heatindex_f')
  double heatindex_f;
  @JsonKey(name: 'dewpoint_c')
  double dewpoint_c;
  @JsonKey(name: 'dewpoint_f')
  double dewpoint_f;
  @JsonKey(name: 'will_it_rain')
  double will_it_rain;
  @JsonKey(name: 'chance_of_rain')
  String chance_of_rain;
  @JsonKey(name: 'will_it_snow')
  double will_it_snow;
  @JsonKey(name: 'chance_of_snow')
  String chance_of_snow;
  @JsonKey(name: 'vis_km')
  double vis_km;
  @JsonKey(name: 'vis_miles')
  double vis_miles;
  @JsonKey(name: 'gust_mph')
  double gust_mph;
  @JsonKey(name: 'gust_kph')
  double gust_kph;

  Hour(
      {this.time_epoch,
        this.time,
        this.temp_c,
        this.temp_f,
        this.condition,
        this.wind_mph,
        this.wind_kph,
        this.wind_degree,
        this.wind_dir,
        this.pressure_mb,
        this.pressure_in,
        this.precip_mm,
        this.precip_in,
        this.humidity,
        this.cloud,
        this.feelslike_c,
        this.feelslike_f,
        this.windchill_c,
        this.windchill_f,
        this.heatindex_c,
        this.heatindex_f,
        this.dewpoint_c,
        this.dewpoint_f,
        this.will_it_rain,
        this.chance_of_rain,
        this.will_it_snow,
        this.chance_of_snow,
        this.vis_km,
        this.vis_miles,
        this.gust_mph,
        this.gust_kph});
}

@JsonSerializable()
class Alerts {
  factory Alerts.fromJson(Map<String, dynamic> json) => _$AlertsFromJson(json);
  Map<String, dynamic> toJson() => _$AlertsToJson(this);
  @JsonKey(name: 'alert')
  List alert;
  Alerts({this.alert});
}