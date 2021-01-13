
import 'package:weather_app/repository/model/weathermodel.dart';
import 'package:weather_app/repository/weatherapi/provider/weatherapi_entities/weatherapi_response.dart';

WeatherModel mapWeatherApiResponseToWeather(WeatherApiResponse response) {
  try {
    var weather = WeatherModel();
    weather
      ..icon = response.current.condition.icon
      ..humidity = response.current.humidity as int
      ..temperature = response.current.feelslike_c
      ..summary = response.current.condition.text
      ..time = response.current.last_updated_epoch.toInt()
    // ..hourly = response.forecast.forecastday !=null
    //   ? List<WeatherData>.from(response.forecast.forecastday.map((e) => WeatherData()
    // ..humidity
    //     ..icon
    //         ..time
    //     ..summary
    //     ..temperature
    //     ..windSpeed
    //     ..windBearing
    //     ..uvIndex
    //     ..temperatureLow
    //     ..temperatureHigh
    //     ..sunsetTime
    //     ..sunriseTime
    //     ..precipType
    //     ..precipProbability
    //     ..apparentTemperature
    // )) : null
      ..daily = response.forecast.forecastday != null
          ? List<WeatherData>.from(
          response.forecast.forecastday.map((e) => WeatherData()
          //..sunsetTime =
            ..temperature = e.day.avgtemp_c
            ..temperatureHigh = e.day.maxtemp_c
          //..sunriseTime = e.astro.sunrise  coming as string time
          //..precipType =
          //..precipProbability =
          //..apparentTemperature =
            ..temperatureLow = e.day.mintemp_c
            ..uvIndex = e.day.uv
          //..windBearing =
            ..windSpeed = e.day.maxwind_mph
            ..summary = e.day.condition.text
            ..time = e.date_epoch.toInt()
            ..icon = e.day.condition.icon
            ..humidity = e.day.avghumidity as int ))
          : null
      ..longitude = response.location.lon
      ..latitude = response.location.lat
    //..units = response.
      ..timezone = response.location.localtime_epoch.toString();
    //..hourlySummary = response.

    return weather;
  } on Exception catch (err) {
    print('WeatherAPI mapper exception: $err');
    rethrow;
  }
}