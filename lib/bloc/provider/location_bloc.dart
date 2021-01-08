import 'package:bloc/bloc.dart';
import 'package:weather_app/repository/model/city_model.dart';

import '../../repository/provider/city_repo.dart';
import '../events/location_event.dart';
import '../states/location_state.dart';
class LocationBloc extends Bloc<LocationEvent, LocationState> {
  CityRepo cityRepo;
  CityModel  cityModel;
  LocationBloc(this.cityRepo) : super(InitialLocation());
  @override
  Stream<LocationState> mapEventToState(LocationEvent event) async*{
    if (event is FetchCity)
    {
      yield(InitialLocation());
      cityModel =await cityRepo.fetchCities(event.City) ;
      yield (LocationIsLoading(cityModel));
    }
  }
}