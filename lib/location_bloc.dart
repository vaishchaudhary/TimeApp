import 'package:bloc/bloc.dart';
import 'city_model.dart';
import 'city_repo.dart';
import 'location_event.dart';
import 'location_state.dart';
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