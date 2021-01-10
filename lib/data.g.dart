// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

City _$CityFromJson(Map<String, dynamic> json) {
  return City(
    description: json['description'] as String,
    distance_meters: json['distance_meters'] as String,
    place_id: json['place_id'] as String,
    title: json['title'] as String,
  );
}

Map<String, dynamic> _$CityToJson(City instance) => <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'place_id': instance.place_id,
      'distance_meters': instance.distance_meters,
    };

ResponseData _$ResponseDataFromJson(Map<String, dynamic> json) {
  return ResponseData(
    status: json['status'] as String,
    from_cache: json['from_cache'] as bool,
    predictions: (json['predictions'] as List)
        ?.map((e) =>
            e == null ? null : Predictions.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ResponseDataToJson(ResponseData instance) =>
    <String, dynamic>{
      'status': instance.status,
      'from_cache': instance.from_cache,
      'predictions': instance.predictions,
    };
