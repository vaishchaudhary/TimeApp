import 'package:weather_app/openweather_repository.dart';


import 'package:weather_app/weather_respository_abstract.dart';
import 'package:weather_app/weathermodel.dart';

 class WeatherRepository implements WeatherRepositoryAbstract
{
 OpenWeatherRepository openWeatherRepository=OpenWeatherRepository();
 @override
  Future<WeatherModel>getWeatherReport(double latitude,double longitude) async {
    WeatherModel weatherModel=await openWeatherRepository.getWeatherReport(latitude, longitude);
    return weatherModel;
  }
}