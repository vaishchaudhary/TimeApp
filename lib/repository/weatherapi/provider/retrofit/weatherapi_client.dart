import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:weather_app/repository/weatherapi/provider/weatherapi_entities/weatherapi_response.dart';
part 'weatherapi_client.g.dart';

@RestApi(baseUrl: 'http://api.weatherapi.com/v1/')
abstract class WeatherForecastClient {
  factory WeatherForecastClient(Dio dio) = _WeatherForecastClient;

  static const String  _path='forecast.json';
  static const String _keyparameter='q';
  static const String _keyLongitude='lon';
  static const String _days='days';
  static const String _apikey='key';
  @GET(_path)
  Future<WeatherApiResponse> getWeatherForecast(@Query(_keyparameter) String data,
      { @Query(_apikey)String api= "87aa68fad80b401f823155542211101", @Query(_days) String days="3"}
      );
}

