import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import 'data.dart';
part 'api_client.g.dart';

///APIs class is for api tags
class Apis {
  static const String users = '/users';
}

@RestApi(baseUrl: '')
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET(Apis.users)
  Future<ResponseData> getCities();
}
