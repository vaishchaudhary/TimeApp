class CityModel {
  String status;
  bool fromCache;
  List<Predictions> predictions;

  CityModel({this.status, this.fromCache, this.predictions});

  CityModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    fromCache = json['from_cache'];
    if (json['predictions'] != null) {
      predictions = new List<Predictions>();
      json['predictions'].forEach((v) {
        predictions.add(new Predictions.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['from_cache'] = this.fromCache;
    if (this.predictions != null) {
      data['predictions'] = this.predictions.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Predictions {
  String title;
  String description;
  String placeId;
  int distanceMeters;

  Predictions(
      {this.title, this.description, this.placeId, this.distanceMeters});

  Predictions.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    placeId = json['place_id'];
    distanceMeters = json['distance_meters'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['description'] = this.description;
    data['place_id'] = this.placeId;
    data['distance_meters'] = this.distanceMeters;
    return data;
  }
}
