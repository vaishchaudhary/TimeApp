part of '../provider/weather_bloc.dart';
class WeatherInfo
{

}
class WeatherState extends WeatherInfo
{
  double lat=0.0,long=0.0;
//  WeatherState()
//  {
//    lat=0.0;
//    long=0.0;
//  }
 WeatherState(double lat,double long)
  {
    this.lat=lat;
    this.long=long;
  }
}
class Fetchweatherdata extends WeatherInfo
{
  WeatherModel weatherModel;
  Fetchweatherdata(this.weatherModel);
}