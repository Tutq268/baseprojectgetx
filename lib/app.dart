import 'package:base__pj_getx/router/app_router.dart';
import 'package:base__pj_getx/router/app_screen.dart';
import 'package:base__pj_getx/screen/home/home_screen.dart';
import 'package:base__pj_getx/services/ThemeServices.dart';
import 'package:base__pj_getx/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      key: key,
      initialRoute: AppRoutes.DASHBOARD,
      getPages: AppScreen.list,
      title: "Flutter base project with getx",
      debugShowCheckedModeBanner: false,
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      themeMode: ThemeServices().theme,
    );
  }
}
