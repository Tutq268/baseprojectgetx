import 'package:base__pj_getx/services/notification_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  var tabIndex = 0;
  late PageController pageController;
  var notifyHelper;
  @override
  void onInit() {
    notifyHelper = NotifyHelper();
    notifyHelper.initializeNotification();
    notifyHelper.requestIOSPermissions();
    pageController = PageController(initialPage: 0);
    super.onInit();
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }

  void changeTabIndex(int index) {
    tabIndex = index;
    update();
  }
}
