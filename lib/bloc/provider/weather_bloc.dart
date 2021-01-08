import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:location/location.dart';
import 'package:weather_app/repository/model/WeatherModel.dart';
import 'package:weather_app/repository/provider/weather_repo.dart';
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
class WeatherData extends Event
{
  WeatherData(this.lat,this.lon);
  String lat;
  String lon;
}
class WeatherBloc extends Bloc<Event, WeatherInfo>{
  WeatherRepo weatherRepo;
  WeatherBloc(this.weatherRepo) : super(null);

  @override
  Stream<WeatherInfo> mapEventToState(Event event) async*{
    // TODO: implement mapEventToState

    if(event is Events)
      {
        yield WeatherState(event.lat, event.long);
      }
    else if ( event is WeatherData)
      {
        WeatherModel weatherModel=await weatherRepo.getWeather(event.lat, event.lon);
        yield(Fetchweatherdata(weatherModel));
      }

  }
}