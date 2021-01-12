import 'package:weather_app/weather.dart';

import 'openweather_response.dart';

WeatherModel mapOpenWeatherToWeather(WeatherResponse value) {
  try {
    var weather = WeatherModel();
    weather
      ..name = value.name
      ..dt = value.dt
      ..visibility = value.visibility
      ..weather = value.weather != null
          ? List<WeatherCondition>.from(
              value.weather.map((k) => WeatherCondition()
                ..icon = k.icon
                ..main = k.main
                ..description = k.description),
            )
          : null
      ..temp = value.main.temp
      ..temp_max = value.main.temp_max
      ..temp_min = value.main.temp_min
      ..pressure = value.main.pressure
      ..humidity = value.main.humidity
      ..speed = value.wind.speed
      ..all = value.clouds.all;
    return weather;
  } on Exception catch (err) {
    print('OpenWeatherAPI mapper exception: $err');
    rethrow;
  }
}
