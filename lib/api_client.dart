import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import 'data.dart';
part 'api_client.g.dart';

///APIs class is for api tags
class Apis {
  static const String users = '/users';
}

@RestApi(
    baseUrl:
        "https://geoproxy.dev.iamplus.services/search?input=kan&location=0,0")
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET(Apis.users)
  Future<ResponseData> getCities();
}
