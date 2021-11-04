import 'package:base__pj_getx/router/app_router.dart';
import 'package:base__pj_getx/screen/dashboard/dashboard_binding.dart';
import 'package:base__pj_getx/screen/dashboard/dashboard_screen.dart';
import 'package:get/get.dart';

class AppScreen {
  static var list = [
    GetPage(
        name: AppRoutes.DASHBOARD,
        page: () => DashboardScreen(),
        binding: DashboardBinding()),
  ];
}
