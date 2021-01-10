import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app/repository/model/city_model.dart';
part 'data.g.dart';

@JsonSerializable()
class City {
  String title;
  String description;
  String place_id;
  String distance_meters;

  City({this.description, this.distance_meters, this.place_id, this.title});
  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
  Map<String, dynamic> toJson() => _$CityToJson(this);
}

@JsonSerializable()
class ResponseData {
  String status;
  bool from_cache;
  List<Predictions> predictions;
  ResponseData({this.status, this.from_cache, this.predictions});
  factory ResponseData.fromJson(Map<String, dynamic> json) =>
      _$ResponseDataFromJson(json);
  Map<String, dynamic> toJson() => _$ResponseDataToJson(this);
}
