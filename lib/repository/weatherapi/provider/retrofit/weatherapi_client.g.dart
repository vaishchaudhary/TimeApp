// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weatherapi_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _WeatherForecastClient implements WeatherForecastClient {
  _WeatherForecastClient(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    this.baseUrl ??= 'http://api.weatherapi.com/v1/';
  }

  final Dio _dio;

  String baseUrl;

  @override
  getWeatherForecast(data,
      {api = "87aa68fad80b401f823155542211101", days = "3"}) async {
    ArgumentError.checkNotNull(data, 'data');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      'q': data,
      'key': api,
      'days': days
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request(
        'forecast.json',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = WeatherApiResponse.fromJson(_result.data);
    return Future.value(value);
  }
}
