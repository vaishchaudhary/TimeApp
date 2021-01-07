// To parse this JSON data, do
//
//     final cityModel = cityModelFromJson(jsonString);

import 'dart:convert';

CityModel cityModelFromJson(String str) => CityModel.fromJson(json.decode(str));

String cityModelToJson(CityModel data) => json.encode(data.toJson());

class CityModel {
  List<String> getCitiesList() {
    List<String> cities = [];

    for (LocationSuggestion ls in this.locationSuggestions) {
      cities.add(ls.cityName.toString());
      //print('locationSujjestion ${ls.name.toString()}');
    }
//    print(cities);
    return cities;
  }

  CityModel({
    this.locationSuggestions,
    this.status,
    this.hasMore,
    this.hasTotal,
    this.userHasAddresses,
  });

  List<LocationSuggestion> locationSuggestions;
  String status;
  int hasMore;
  int hasTotal;
  bool userHasAddresses;

  factory CityModel.fromJson(Map<String, dynamic> json) => CityModel(
    locationSuggestions: List<LocationSuggestion>.from(
        json["location_suggestions"]
            .map((x) => LocationSuggestion.fromJson(x))),
    status: json["status"],
    hasMore: json["has_more"],
    hasTotal: json["has_total"],
    userHasAddresses: json["user_has_addresses"],
  );

  Map<String, dynamic> toJson() => {
    "location_suggestions":
    List<dynamic>.from(locationSuggestions.map((x) => x.toJson())),
    "status": status,
    "has_more": hasMore,
    "has_total": hasTotal,
    "user_has_addresses": userHasAddresses,
  };
}

class LocationSuggestion {
  LocationSuggestion({
    this.entityType,
    this.entityId,
    this.title,
    this.latitude,
    this.longitude,
    this.cityId,
    this.cityName,
    this.countryId,
    this.countryName,
  });

  EntityType entityType;
  int entityId;
  String title;
  double latitude;
  double longitude;
  int cityId;
  String cityName;
  int countryId;
  String countryName;

  factory LocationSuggestion.fromJson(Map<String, dynamic> json) =>
      LocationSuggestion(
        entityType: entityTypeValues.map[json["entity_type"]],
        entityId: json["entity_id"],
        title: json["title"],
        latitude: json["latitude"].toDouble(),
        longitude: json["longitude"].toDouble(),
        cityId: json["city_id"],
        cityName: json["city_name"],
        countryId: json["country_id"],
        countryName: json["country_name"],
      );

  Map<String, dynamic> toJson() => {
    "entity_type": entityTypeValues.reverse[entityType],
    "entity_id": entityId,
    "title": title,
    "latitude": latitude,
    "longitude": longitude,
    "city_id": cityId,
    "city_name": cityName,
    "country_id": countryId,
    "country_name": countryName,
  };
}

enum EntityType { CITY }

final entityTypeValues = EnumValues({"city": EntityType.CITY});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
