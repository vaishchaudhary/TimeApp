import '../provider/openweather_entities/openweather_onecall_api_response.dart';
import '../../model/weathermodel.dart';
WeatherModel mapOpenWeatherToWeather(WeatherResponse value) {
  try {
    var weather = WeatherModel();
    weather
    ..latitude=value.lat
    ..longitude=value.lon
    ..timezone=value.timezone
    ..temperature=value.current.temp
    ..summary=value.current.weather[0].description
    ..icon=value.current.weather[0].main
    ..humidity=value.current.humidity
    ..time=value.current.dt
    ..hourly=value.hourly!=null
    ?List<WeatherData>.from(value.hourly.map((k) => WeatherData()
        ..summary=k.weather[0].description
        ..time=k.dt
        ..icon=k.weather[0].main
        ..temperature=k.temp
        ..windSpeed=k.wind_speed
        ..humidity=k.humidity
        ..uvIndex=k.uvi
        ..sunriseTime=value.current.sunrise
        ..sunsetTime=value.current.sunset
        ..windBearing=k.wind_deg
        ..apparentTemperature=k.feels_like
        ..precipProbability=k.pop
        ..precipType=k.weather[0].main=="Rain"?"Rain":(k.weather[0].main=="Snow"?"Snow":null)
    )):null
    ..daily=value.daily!=null
    ?List<WeatherData>.from(value.daily.map((k) => WeatherData()
      ..time=k.dt
      ..summary=k.weather[0].description
      ..icon=k.weather[0].main
      ..sunriseTime=k.sunrise
      ..sunsetTime=k.sunset
      ..temperature=k.temp.day
      ..apparentTemperature=k.feelsLike.day
      ..windSpeed=k.windSpeed
      ..uvIndex=k.uvi
      ..humidity=k.humidity
      ..temperatureHigh=k.temp.max
      ..temperatureLow=k.temp.min
      ..precipProbability=k.pop
      ..precipType=k.weather[0].main=="Rain"?"Rain":(k.weather[0].main=="Snow"?"Snow":null)
    )):null;
    return weather;
  }on Exception catch (err) {
    print('OpenWeatherAPI mapper exception: $err');
    rethrow;
  }
}