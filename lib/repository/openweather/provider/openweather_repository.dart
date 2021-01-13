import 'package:dio/dio.dart';
import 'package:weather_app/repository/openweather/provider/openweather_entities/openweather_onecall_api_response.dart';
import 'package:weather_app/repository/model/weathermodel.dart';


import '../mapper/mapper.dart';
import 'retrofit/openweather_client.dart';


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