import 'dart:convert';
import 'dart:developer';

import 'package:base__pj_getx/api/provider/api_provider.dart';
import 'package:base__pj_getx/model/account/account_model.dart';
import 'package:get/instance_manager.dart';
import 'package:get/get.dart';

class ApiRespository {
  final ApiProvider provider = Get.put(ApiProvider());

  Future<AccountModel> getSingleUser() async {
    final dynamic res = await provider.getSingleUser('/api/users/2');
    inspect(res.body["data"]);
    return AccountModel.fromJson(res?.body["data"]);
  }
}
