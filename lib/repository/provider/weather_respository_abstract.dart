import 'package:weather_app/repository/model/weathermodel.dart';

abstract class WeatherRepositoryAbstract
{
  Future<WeatherModel> getWeatherReport(double latitude,double longitude);
  Future<WeatherModel> getWeatherForecast(String data);
}