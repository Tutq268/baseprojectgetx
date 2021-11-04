import 'package:base__pj_getx/api/interceptors/request_interceptors.dart';
import 'package:base__pj_getx/api/interceptors/response_interceptors.dart';
import 'package:get/get.dart';

class BaseProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = "https://reqres.in";
    httpClient.addRequestModifier(requestInterceptor);
    httpClient.addResponseModifier(responseInterceptor);
  }
}
