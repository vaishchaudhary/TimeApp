import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:location/location.dart';
import 'package:weather_app/repository/provider/weather_repo.dart';
import 'package:weather_app/weather_repository.dart';
import 'package:weather_app/weathermodel.dart';
part '../states/weather_state.dart';
class Event
{

}
class Events extends Event  {
  double lat,long;
  Events(double lat,double long)
  {
    this.lat=lat;
    this.long=long;
  }
}
class FetchWeatherData extends Event
{
  FetchWeatherData(this.lat,this.lon);
  double lat;
  double lon;
}
class WeatherBloc extends Bloc<Event, WeatherInfo>{
  WeatherRepository weatherRepository;
  WeatherBloc(this.weatherRepository) : super(null);

  @override
  Stream<WeatherInfo> mapEventToState(Event event) async*{
    // TODO: implement mapEventToState

    if(event is Events)
      {
        yield WeatherState(event.lat, event.long);
      }
    else if ( event is FetchWeatherData)
      {
        WeatherModel weatherModel=await weatherRepository.getWeatherReport(event.lat, event.lon);
        yield(Fetchweatherdata(weatherModel));
      }

  }
}