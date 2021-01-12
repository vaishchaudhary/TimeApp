import 'package:dio/dio.dart';
import 'package:weather_app/weather.dart';
import 'mapper.dart';
import 'openweather_client.dart';
import 'openweather_response.dart';

class OpenWeatherRepository {
  WeatherClient _weatherClient;

  OpenWeatherRepository() {
    _weatherClient = WeatherClient(Dio());
  }
  Future<WeatherModel> getWeatherReport(double latitude,double longitude)
  async {
    WeatherResponse response;
      response = WeatherResponse();
      response = await _weatherClient.getWeatherReport(
          latitude, longitude);
      return(mapOpenWeatherToWeather(response)); // Return result
    }
  }