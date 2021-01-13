import 'package:weather_app/repository/openweather/provider/openweather_repository.dart';


import 'package:weather_app/repository/provider/weather_respository_abstract.dart';
import 'package:weather_app/repository/model/weathermodel.dart';
import 'package:weather_app/repository/weatherapi/provider/weatherapi_repository.dart';

 class WeatherRepository implements WeatherRepositoryAbstract
{
 OpenWeatherRepository openWeatherRepository=OpenWeatherRepository();
 WeatherApiRepository weatherApiRepository=WeatherApiRepository();
 @override
  Future<WeatherModel>getWeatherReport(double latitude,double longitude) async {
    WeatherModel weatherModel=await openWeatherRepository.getWeatherReport(latitude, longitude);
    return weatherModel;
  }

  @override
  Future<WeatherModel> getWeatherForecast(String data) async{
   WeatherModel weatherModel= await weatherApiRepository.getWeatherForecast(data);
   return weatherModel;
  }
}