import 'package:get/get.dart';

import 'base_provider.dart';

abstract class ApiProviderInterface {
  // Future<Response> test(String path);
}

class ApiProvider extends BaseProvider implements ApiProviderInterface {
  /*temp*/
  // Future<Response> login(String path, LoginRequest data) {
  //   return post(path, data.toJson());
  // }
  // @override
  // Future<Response> test(String path) {
  //   return get(path);
  // }
}
