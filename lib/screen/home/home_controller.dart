import 'package:base__pj_getx/api/respository/api_respository.dart';
import 'package:base__pj_getx/model/account/account_model.dart';
import 'package:base__pj_getx/services/notification_services.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final String title = 'Home Title';

  var userProfile = AccountModel().obs;
  var count = 0.obs;

  var _apiRespository = ApiRespository();

  @override
  void onReady() async {
    userProfile.value = await _apiRespository.getSingleUser();
    super.onReady();
  }

  increment() {
    count.value++;
  }

  decrement() {
    count.value--;
  }
}
