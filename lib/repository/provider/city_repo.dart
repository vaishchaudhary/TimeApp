import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather_app/repository/model/city_model.dart';



class CityRepo {
  List<String> cities = [];
  CityModel cm;



  // Future<List<String>> cityList(String cityKeyword) async {
  //   //print('Here');
  //   //todo get response
  //   cm = await fetchCities(cityKeyword);
  //   //print(cm);
  //   //todo covert response to model
  //   cities = cm.getCitiesList() as List;
  //   //todo return model.getcities
  //   //print(cities);
  //   return cities;
  // }

  Future<CityModel> fetchCities(String cityKeyword) async {
    print(cityKeyword);
    var url =
        'https://geoproxy.dev.iamplus.services/search?input='+'$cityKeyword'+'&location=0,0';
    final response = await http
        .get(url);
    https://geoproxy.dev.iamplus.services/search?input=kan&location=0,0

    //print(response);

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      //print(response.body);
      return CityModel.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load data');
    }
  }
}
