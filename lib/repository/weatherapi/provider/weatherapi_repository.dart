import 'package:dio/dio.dart';
import 'package:weather_app/repository/model/weathermodel.dart';
import 'package:weather_app/repository/weatherapi/mapper/mapper.dart';
import 'package:weather_app/repository/weatherapi/provider/retrofit/weatherapi_client.dart';
import 'package:weather_app/repository/weatherapi/provider/weatherapi_entities/weatherapi_response.dart';

class WeatherApiRepository {
  WeatherForecastClient _weatherForecastClient;

  WeatherApiRepository() {
    _weatherForecastClient = WeatherForecastClient(Dio());
  }
  Future<WeatherModel> getWeatherForecast(String data)
  async {
    WeatherApiResponse response;
    response = await _weatherForecastClient.getWeatherForecast(data);
    return(mapWeatherApiResponseToWeather(response)); // Return result
  }
}
