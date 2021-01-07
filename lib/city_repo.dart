import 'dart:convert';
import 'package:http/http.dart' as http;

import 'city_model.dart';

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
    var url =
        'https://developers.zomato.com/api/v2.1/locations?query=${cityKeyword}&count=10';
    final response = await http
        .get(url, headers: {'user-key': '809a84225d5dc872c416d2013743426b'});

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
