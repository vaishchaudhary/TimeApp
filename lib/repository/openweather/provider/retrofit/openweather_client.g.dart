// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'openweather_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _WeatherClient implements WeatherClient {
  _WeatherClient(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    this.baseUrl ??= 'https://api.openweathermap.org/data/';
  }

  final Dio _dio;

  String baseUrl;

  @override
  getWeatherReport(latitude, longitude,
      {api = "51663d3c484f2d7d48d8a3ab31715333", unit = "metric"}) async {
    ArgumentError.checkNotNull(latitude, 'latitude');
    ArgumentError.checkNotNull(longitude, 'longitude');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      'lat': latitude,
      'lon': longitude,
      'appid': api,
      'units': unit
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request(
        '2.5/onecall',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = WeatherResponse.fromJson(_result.data);
    return Future.value(value);
  }
}
