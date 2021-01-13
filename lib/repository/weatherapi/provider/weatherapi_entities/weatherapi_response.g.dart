// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weatherapi_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherApiResponse _$WeatherApiResponseFromJson(Map<String, dynamic> json) {
  return WeatherApiResponse(
    location: json['location'] == null
        ? null
        : Location.fromJson(json['location'] as Map<String, dynamic>),
    current: json['current'] == null
        ? null
        : Current.fromJson(json['current'] as Map<String, dynamic>),
    forecast: json['forecast'] == null
        ? null
        : Forecast.fromJson(json['forecast'] as Map<String, dynamic>),
    alerts: json['alerts'] == null
        ? null
        : Alerts.fromJson(json['alerts'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$WeatherApiResponseToJson(WeatherApiResponse instance) =>
    <String, dynamic>{
      'location': instance.location,
      'current': instance.current,
      'forecast': instance.forecast,
      'alerts': instance.alerts,
    };

Current _$CurrentFromJson(Map<String, dynamic> json) {
  return Current(
    last_updated_epoch: (json['last_updated_epoch'] as num)?.toDouble(),
    last_updated: (json['last_updated'] as num)?.toDouble(),
    temp_c: (json['temp_c'] as num)?.toDouble(),
    temp_f: (json['temp_f'] as num)?.toDouble(),
    condition: json['condition'] == null
        ? null
        : Condition.fromJson(json['condition'] as Map<String, dynamic>),
    wind_mph: (json['wind_mph'] as num)?.toDouble(),
    wind_kph: (json['wind_kph'] as num)?.toDouble(),
    wind_degree: (json['wind_degree'] as num)?.toDouble(),
    wind_dir: json['wind_dir'] as String,
    pressure_mb: (json['pressure_mb'] as num)?.toDouble(),
    pressure_in: (json['pressure_in'] as num)?.toDouble(),
    precip_mm: (json['precip_mm'] as num)?.toDouble(),
    precip_in: (json['precip_in'] as num)?.toDouble(),
    humidity: (json['humidity'] as num)?.toDouble(),
    cloud: (json['cloud'] as num)?.toDouble(),
    feelslike_c: (json['feelslike_c'] as num)?.toDouble(),
    feelslike_f: (json['feelslike_f'] as num)?.toDouble(),
    vis_km: (json['vis_km'] as num)?.toDouble(),
    vis_miles: (json['vis_miles'] as num)?.toDouble(),
    uv: (json['uv'] as num)?.toDouble(),
    gust_mph: (json['gust_mph'] as num)?.toDouble(),
    gust_kph: (json['gust_kph'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$CurrentToJson(Current instance) => <String, dynamic>{
      'last_updated_epoch': instance.last_updated_epoch,
      'last_updated': instance.last_updated,
      'temp_c': instance.temp_c,
      'temp_f': instance.temp_f,
      'condition': instance.condition,
      'wind_mph': instance.wind_mph,
      'wind_kph': instance.wind_kph,
      'wind_degree': instance.wind_degree,
      'wind_dir': instance.wind_dir,
      'pressure_mb': instance.pressure_mb,
      'pressure_in': instance.pressure_in,
      'precip_mm': instance.precip_mm,
      'precip_in': instance.precip_in,
      'humidity': instance.humidity,
      'cloud': instance.cloud,
      'feelslike_c': instance.feelslike_c,
      'feelslike_f': instance.feelslike_f,
      'vis_km': instance.vis_km,
      'vis_miles': instance.vis_miles,
      'uv': instance.uv,
      'gust_mph': instance.gust_mph,
      'gust_kph': instance.gust_kph,
    };

Location _$LocationFromJson(Map<String, dynamic> json) {
  return Location(
    name: json['name'] as String,
    region: json['region'] as String,
    country: json['country'] as String,
    lat: (json['lat'] as num)?.toDouble(),
    lon: (json['lon'] as num)?.toDouble(),
    tz_id: json['tz_id'] as String,
    localtime_epoch: (json['localtime_epoch'] as num)?.toDouble(),
    localtime: json['localtime'] as String,
  );
}

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'name': instance.name,
      'region': instance.region,
      'country': instance.country,
      'lat': instance.lat,
      'lon': instance.lon,
      'tz_id': instance.tz_id,
      'localtime_epoch': instance.localtime_epoch,
      'localtime': instance.localtime,
    };

Condition _$ConditionFromJson(Map<String, dynamic> json) {
  return Condition(
    text: json['text'] as String,
    icon: json['icon'] as String,
    code: (json['code'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$ConditionToJson(Condition instance) => <String, dynamic>{
      'text': instance.text,
      'icon': instance.icon,
      'code': instance.code,
    };

Forecast _$ForecastFromJson(Map<String, dynamic> json) {
  return Forecast(
    forecastday: (json['forecastday'] as List)
        ?.map((e) =>
            e == null ? null : Forecastday.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ForecastToJson(Forecast instance) => <String, dynamic>{
      'forecastday': instance.forecastday,
    };

Forecastday _$ForecastdayFromJson(Map<String, dynamic> json) {
  return Forecastday(
    date: json['date'] as String,
    date_epoch: (json['date_epoch'] as num)?.toDouble(),
    day: json['day'] == null
        ? null
        : Day.fromJson(json['day'] as Map<String, dynamic>),
    astro: json['astro'] == null
        ? null
        : Astro.fromJson(json['astro'] as Map<String, dynamic>),
    hour: (json['hour'] as List)
        ?.map(
            (e) => e == null ? null : Hour.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ForecastdayToJson(Forecastday instance) =>
    <String, dynamic>{
      'date': instance.date,
      'date_epoch': instance.date_epoch,
      'day': instance.day,
      'astro': instance.astro,
      'hour': instance.hour,
    };

Day _$DayFromJson(Map<String, dynamic> json) {
  return Day(
    maxtemp_c: (json['maxtemp_c'] as num)?.toDouble(),
    maxtemp_f: (json['maxtemp_f'] as num)?.toDouble(),
    mintemp_c: (json['mintemp_c'] as num)?.toDouble(),
    mintemp_f: (json['mintemp_f'] as num)?.toDouble(),
    avgtemp_c: (json['avgtemp_c'] as num)?.toDouble(),
    avgtemp_f: (json['avgtemp_f'] as num)?.toDouble(),
    maxwind_mph: (json['maxwind_mph'] as num)?.toDouble(),
    maxwind_kph: (json['maxwind_kph'] as num)?.toDouble(),
    totalprecip_mm: (json['totalprecip_mm'] as num)?.toDouble(),
    totalprecip_in: (json['totalprecip_in'] as num)?.toDouble(),
    avgvis_km: (json['avgvis_km'] as num)?.toDouble(),
    avgvis_miles: (json['avgvis_miles'] as num)?.toDouble(),
    avghumidity: (json['avghumidity'] as num)?.toDouble(),
    daily_will_it_rain: (json['daily_will_it_rain'] as num)?.toDouble(),
    daily_chance_of_rain: (json['daily_chance_of_rain'] as num)?.toDouble(),
    codaily_will_it_snowde: (json['daily_will_it_snow'] as num)?.toDouble(),
    daily_chance_of_snow: (json['daily_chance_of_snow'] as num)?.toDouble(),
    condition: json['condition'] == null
        ? null
        : Condition.fromJson(json['condition'] as Map<String, dynamic>),
    uv: (json['uv'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$DayToJson(Day instance) => <String, dynamic>{
      'maxtemp_c': instance.maxtemp_c,
      'maxtemp_f': instance.maxtemp_f,
      'mintemp_c': instance.mintemp_c,
      'mintemp_f': instance.mintemp_f,
      'avgtemp_c': instance.avgtemp_c,
      'avgtemp_f': instance.avgtemp_f,
      'maxwind_mph': instance.maxwind_mph,
      'maxwind_kph': instance.maxwind_kph,
      'totalprecip_mm': instance.totalprecip_mm,
      'totalprecip_in': instance.totalprecip_in,
      'avgvis_km': instance.avgvis_km,
      'avgvis_miles': instance.avgvis_miles,
      'avghumidity': instance.avghumidity,
      'daily_will_it_rain': instance.daily_will_it_rain,
      'daily_chance_of_rain': instance.daily_chance_of_rain,
      'daily_will_it_snow': instance.codaily_will_it_snowde,
      'daily_chance_of_snow': instance.daily_chance_of_snow,
      'condition': instance.condition,
      'uv': instance.uv,
    };

Astro _$AstroFromJson(Map<String, dynamic> json) {
  return Astro(
    sunrise: json['sunrise'] as String,
    sunset: json['sunset'] as String,
    moonrise: json['moonrise'] as String,
    moonset: json['moonset'] as String,
    moon_phase: json['moon_phase'] as String,
    moon_illumination: json['moon_illumination'] as String,
  );
}

Map<String, dynamic> _$AstroToJson(Astro instance) => <String, dynamic>{
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'moonrise': instance.moonrise,
      'moonset': instance.moonset,
      'moon_phase': instance.moon_phase,
      'moon_illumination': instance.moon_illumination,
    };

Hour _$HourFromJson(Map<String, dynamic> json) {
  return Hour(
    time_epoch: (json['time_epoch'] as num)?.toDouble(),
    time: json['time'] as String,
    temp_c: (json['temp_c'] as num)?.toDouble(),
    temp_f: (json['temp_f'] as num)?.toDouble(),
    condition: json['condition'] == null
        ? null
        : Condition.fromJson(json['condition'] as Map<String, dynamic>),
    wind_mph: (json['wind_mph'] as num)?.toDouble(),
    wind_kph: (json['wind_kph'] as num)?.toDouble(),
    wind_degree: (json['wind_degree'] as num)?.toDouble(),
    wind_dir: json['wind_dir'] as String,
    pressure_mb: (json['pressure_mb'] as num)?.toDouble(),
    pressure_in: (json['pressure_in'] as num)?.toDouble(),
    precip_mm: (json['precip_mm'] as num)?.toDouble(),
    precip_in: (json['precip_in'] as num)?.toDouble(),
    humidity: (json['humidity'] as num)?.toDouble(),
    cloud: (json['cloud'] as num)?.toDouble(),
    feelslike_c: (json['feelslike_c'] as num)?.toDouble(),
    feelslike_f: (json['feelslike_f'] as num)?.toDouble(),
    windchill_c: (json['windchill_c'] as num)?.toDouble(),
    windchill_f: (json['windchill_f'] as num)?.toDouble(),
    heatindex_c: (json['heatindex_c'] as num)?.toDouble(),
    heatindex_f: (json['heatindex_f'] as num)?.toDouble(),
    dewpoint_c: (json['dewpoint_c'] as num)?.toDouble(),
    dewpoint_f: (json['dewpoint_f'] as num)?.toDouble(),
    will_it_rain: (json['will_it_rain'] as num)?.toDouble(),
    chance_of_rain: json['chance_of_rain'] as String,
    will_it_snow: (json['will_it_snow'] as num)?.toDouble(),
    chance_of_snow: json['chance_of_snow'] as String,
    vis_km: (json['vis_km'] as num)?.toDouble(),
    vis_miles: (json['vis_miles'] as num)?.toDouble(),
    gust_mph: (json['gust_mph'] as num)?.toDouble(),
    gust_kph: (json['gust_kph'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$HourToJson(Hour instance) => <String, dynamic>{
      'time_epoch': instance.time_epoch,
      'time': instance.time,
      'temp_c': instance.temp_c,
      'temp_f': instance.temp_f,
      'condition': instance.condition,
      'wind_mph': instance.wind_mph,
      'wind_kph': instance.wind_kph,
      'wind_degree': instance.wind_degree,
      'wind_dir': instance.wind_dir,
      'pressure_mb': instance.pressure_mb,
      'pressure_in': instance.pressure_in,
      'precip_mm': instance.precip_mm,
      'precip_in': instance.precip_in,
      'humidity': instance.humidity,
      'cloud': instance.cloud,
      'feelslike_c': instance.feelslike_c,
      'feelslike_f': instance.feelslike_f,
      'windchill_c': instance.windchill_c,
      'windchill_f': instance.windchill_f,
      'heatindex_c': instance.heatindex_c,
      'heatindex_f': instance.heatindex_f,
      'dewpoint_c': instance.dewpoint_c,
      'dewpoint_f': instance.dewpoint_f,
      'will_it_rain': instance.will_it_rain,
      'chance_of_rain': instance.chance_of_rain,
      'will_it_snow': instance.will_it_snow,
      'chance_of_snow': instance.chance_of_snow,
      'vis_km': instance.vis_km,
      'vis_miles': instance.vis_miles,
      'gust_mph': instance.gust_mph,
      'gust_kph': instance.gust_kph,
    };

Alerts _$AlertsFromJson(Map<String, dynamic> json) {
  return Alerts(
    alert: json['alert'] as List,
  );
}

Map<String, dynamic> _$AlertsToJson(Alerts instance) => <String, dynamic>{
      'alert': instance.alert,
    };
