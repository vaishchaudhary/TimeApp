import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'openweather_response.dart';


part 'openweather_client.g.dart';

@RestApi(baseUrl: 'https://api.openweathermap.org/data/')
abstract class WeatherClient {
  factory WeatherClient(Dio dio) = _WeatherClient;

  static const String  _path='2.5/weather';
   static const String _keyLatitude='lat';
  static const String _keyLongitude='lon';
   static const String _keyUnits='units';
  static const String _apikey='appid';
  @GET(_path)
  Future<WeatherResponse> getWeatherReport(@Query(_keyLatitude) double latitude,
      @Query(_keyLongitude) double longitude,
  { @Query(_apikey)String api= "51663d3c484f2d7d48d8a3ab31715333", @Query(_keyUnits) String unit="metric"}
  );
}
