import 'package:weather_app/openweather_response.dart';
import 'package:weather_app/weather.dart';
abstract class WeatherRepositoryAbstract
{
  Future<WeatherModel> getWeatherReport(double latitude,double longitude);
}