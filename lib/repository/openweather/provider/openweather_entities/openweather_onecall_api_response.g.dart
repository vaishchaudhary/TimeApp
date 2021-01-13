// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'openweather_onecall_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherResponse _$WeatherResponseFromJson(Map<String, dynamic> json) {
  return WeatherResponse(
    lat: (json['lat'] as num)?.toDouble(),
    lon: (json['lon'] as num)?.toDouble(),
    timezone: json['timezone'] as String,
    timezoneOffset: json['timezone_offset'] as int,
    current: json['current'] == null
        ? null
        : Current.fromJson(json['current'] as Map<String, dynamic>),
    minutely: (json['minutely'] as List)
        ?.map((e) =>
            e == null ? null : Minutely.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    hourly: (json['hourly'] as List)
        ?.map((e) =>
            e == null ? null : Hourly.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    daily: (json['daily'] as List)
        ?.map(
            (e) => e == null ? null : Daily.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$WeatherResponseToJson(WeatherResponse instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lon': instance.lon,
      'timezone': instance.timezone,
      'timezone_offset': instance.timezoneOffset,
      'current': instance.current,
      'minutely': instance.minutely,
      'hourly': instance.hourly,
      'daily': instance.daily,
    };

Current _$CurrentFromJson(Map<String, dynamic> json) {
  return Current(
    dt: json['dt'] as int,
    sunrise: json['sunrise'] as int,
    sunset: json['sunset'] as int,
    temp: (json['temp'] as num)?.toDouble(),
    feelsLike: (json['feels_like'] as num)?.toDouble(),
    pressure: json['pressure'] as int,
    humidity: json['humidity'] as int,
    dewPoint: (json['dew_point'] as num)?.toDouble(),
    uvi: json['uvi'] as int,
    clouds: json['clouds'] as int,
    visibility: json['visibility'] as int,
    weather: (json['weather'] as List)
        ?.map((e) =>
            e == null ? null : Weather.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    windSpeed: (json['wind_speed'] as num)?.toDouble(),
    windDeg: json['wind_deg'] as int,
  );
}

Map<String, dynamic> _$CurrentToJson(Current instance) => <String, dynamic>{
      'dt': instance.dt,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'temp': instance.temp,
      'feels_like': instance.feelsLike,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'dew_point': instance.dewPoint,
      'uvi': instance.uvi,
      'clouds': instance.clouds,
      'visibility': instance.visibility,
      'wind_speed': instance.windSpeed,
      'wind_deg': instance.windDeg,
      'weather': instance.weather,
    };

Weather _$WeatherFromJson(Map<String, dynamic> json) {
  return Weather(
    id: json['id'] as int,
    main: json['main'] as String,
    description: json['description'] as String,
    icon: json['icon'] as String,
  );
}

Map<String, dynamic> _$WeatherToJson(Weather instance) => <String, dynamic>{
      'id': instance.id,
      'main': instance.main,
      'description': instance.description,
      'icon': instance.icon,
    };

Minutely _$MinutelyFromJson(Map<String, dynamic> json) {
  return Minutely(
    dt: json['dt'] as int,
    precipitation: json['precipitation'] as int,
  );
}

Map<String, dynamic> _$MinutelyToJson(Minutely instance) => <String, dynamic>{
      'dt': instance.dt,
      'precipitation': instance.precipitation,
    };

Hourly _$HourlyFromJson(Map<String, dynamic> json) {
  return Hourly(
    dt: json['dt'] as int,
    temp: (json['temp'] as num)?.toDouble(),
    feels_like: (json['feels_like'] as num)?.toDouble(),
    pressure: json['pressure'] as int,
    humidity: json['humidity'] as int,
    dew_point: json['dew_point'] as int,
    uvi: json['uvi'] as double,
    clouds: json['clouds'] as int,
    visibility: json['visibility'] as int,
    wind_speed: (json['double'] as num)?.toDouble(),
    wind_deg: json['wind_deg'] as int,
    weather: (json['weather'] as List)
        ?.map((e) =>
            e == null ? null : Weather.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    pop: json['pop'] as double,
  );
}

Map<String, dynamic> _$HourlyToJson(Hourly instance) => <String, dynamic>{
      'dt': instance.dt,
      'temp': instance.temp,
      'feels_like': instance.feels_like,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'dew_point': instance.dew_point,
      'uvi': instance.uvi,
      'clouds': instance.clouds,
      'visibility': instance.visibility,
      'double': instance.wind_speed,
      'wind_deg': instance.wind_deg,
      'weather': instance.weather,
      'pop': instance.pop,
    };

Daily _$DailyFromJson(Map<String, dynamic> json) {
  return Daily(
    dt: json['dt'] as int,
    sunrise: json['sunrise'] as int,
    sunset: json['sunset'] as int,
    temp: json['temp'] == null
        ? null
        : Temp.fromJson(json['temp'] as Map<String, dynamic>),
    feelsLike: json['feels_like'] == null
        ? null
        : FeelsLike.fromJson(json['feels_like'] as Map<String, dynamic>),
    pressure: json['pressure'] as int,
    humidity: json['humidity'] as int,
    dewPoint: json['dew_point'] as int,
    windSpeed: (json['wind_speed'] as num)?.toDouble(),
    windDeg: json['wind_deg'] as int,
    weather: (json['weather'] as List)
        ?.map((e) =>
            e == null ? null : Weather.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    clouds: json['clouds'] as int,
    pop: json['pop'] as double,
    uvi: (json['uvi'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$DailyToJson(Daily instance) => <String, dynamic>{
      'dt': instance.dt,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'temp': instance.temp,
      'feels_like': instance.feelsLike,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'dew_point': instance.dewPoint,
      'wind_speed': instance.windSpeed,
      'wind_deg': instance.windDeg,
      'weather': instance.weather,
      'clouds': instance.clouds,
      'pop': instance.pop,
      'uvi': instance.uvi,
    };

Temp _$TempFromJson(Map<String, dynamic> json) {
  return Temp(
    day: (json['day'] as num)?.toDouble(),
    min: (json['min'] as num)?.toDouble(),
    max: (json['max'] as num)?.toDouble(),
    night: (json['night'] as num)?.toDouble(),
    eve: (json['eve'] as num)?.toDouble(),
    morn: (json['morn'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$TempToJson(Temp instance) => <String, dynamic>{
      'day': instance.day,
      'min': instance.min,
      'max': instance.max,
      'night': instance.night,
      'eve': instance.eve,
      'morn': instance.morn,
    };

FeelsLike _$FeelsLikeFromJson(Map<String, dynamic> json) {
  return FeelsLike(
    day: (json['day'] as num)?.toDouble(),
    night: (json['night'] as num)?.toDouble(),
    eve: (json['eve'] as num)?.toDouble(),
    morn: (json['morn'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$FeelsLikeToJson(FeelsLike instance) => <String, dynamic>{
      'day': instance.day,
      'night': instance.night,
      'eve': instance.eve,
      'morn': instance.morn,
    };
