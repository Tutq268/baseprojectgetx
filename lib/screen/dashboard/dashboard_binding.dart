import 'package:base__pj_getx/controller/home/home_controller.dart';
import 'package:base__pj_getx/screen/add/add_controller.dart';
import 'package:base__pj_getx/screen/message/message_controller.dart';
import 'package:base__pj_getx/screen/message/message_screen.dart';
import 'package:base__pj_getx/screen/users/user_controller.dart';
import 'package:get/get.dart';

import 'dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<UserController>(() => UserController());
    Get.lazyPut<MessageController>(() => MessageController());
    Get.lazyPut<AddController>(() => AddController());
  }
}
