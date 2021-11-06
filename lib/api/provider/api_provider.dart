import 'package:base__pj_getx/model/account/account_model.dart';
import 'package:get/get.dart';

import 'base_provider.dart';

abstract class ApiProviderInterface {
  Future<Response> getSingleUser(String path);
}

class ApiProvider extends BaseProvider implements ApiProviderInterface {
  @override
  Future<Response> getSingleUser(String path) {
    return get(path);
  }
}
