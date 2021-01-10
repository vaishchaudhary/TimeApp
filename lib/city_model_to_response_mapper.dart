import 'package:weather_app/data.dart';
import 'package:weather_app/repository/model/city_model.dart';

class CityModelToResponseMapper {
  Map<String, dynamic> res;
  CityModel cityModel = CityModel();
  CityModelToResponseMapper({this.res});

  CityModel toCityModel() {
    print('////////////////10 of CityModelToResponseMapper');
    cityModel
      ..predictions = getPredictions(res['predictions'])
      ..status = res['status']
      ..fromCache = res['fromCache'];
    return cityModel;
  }

  List<Predictions> getPredictions(List predictions) {
    print(predictions);
    List<Predictions> finalPredictions = [];
    int count = 0;
    for (Predictions city in predictions) {
      print('City $count = $city and ${city.title}');

      Predictions p = Predictions();
      p.title = city.title;
      p.description = city.description;
      p.distanceMeters = city.distanceMeters;
      p.placeId = city.placeId;

      finalPredictions.add(p);
      print('Sucess add');
      count += 1;
    }
    return finalPredictions;
  }
}
