import 'dart:convert';

import 'WeatherModel.dart';
import 'package:http/http.dart' as http;

class WeatherRepo {
  Future<WeatherModel> getWeather(String lat, String lng) async {
    final response = await http.get(
        'https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lng&appid=51663d3c484f2d7d48d8a3ab31715333&units=metric');

    if (response.statusCode == 200) {
      var result = json.decode(response.body);
      var model = WeatherModel.fromJson(result);
      return model;
    } else
      throw Exception('Failed to load Weather Information');
  }
}
