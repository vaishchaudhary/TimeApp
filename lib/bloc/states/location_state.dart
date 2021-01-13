import 'package:weather_app/repository/model/city_model.dart';
class LocationState
{

}
class InitialLocation extends LocationState
{

}
class LocationIsLoading extends LocationState
{
  CityModel cityModel;
  LocationIsLoading(this.cityModel);
}