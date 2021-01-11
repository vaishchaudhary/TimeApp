import 'package:weather_app/weather.dart';
import 'openweather_response.dart';
WeatherModel mapOpenWeatherToWeather(WeatherResponse value) {
  try {
    var weather = WeatherModel();
    weather
    ..name=value.name
    ..dt=value.dt
    ..visibility=value.visibility
    ..weather=value.weather != null
    ? List<WeatherCondition>.from(value.weather.map((k) => WeatherCondition()
    ..icon=k.icon
        ..main=k.main
        ..description=k.description
    ),):null
     ..main.humidity=value.main?.humidity??10
   ..main.pressure=value.main?.pressure
   ..main.temp_max=value.main?.temp_max
   ..main.temp=value.main?.temp
   ..main.temp_min=value.main?.temp_min
   ..wind.speed=value.wind?.speed
   ..clouds.all=value.clouds?.all;
    return weather;
  } on Exception catch (err) {
    print('DarkSky mapper exception: $err');
    rethrow;
  }
}