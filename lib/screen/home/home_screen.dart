import 'dart:developer';

import 'package:base__pj_getx/screen/dashboard/dashboard_controller.dart';
import 'package:base__pj_getx/screen/home/home_controller.dart';
import 'package:base__pj_getx/screen/home/home_detail_screen.dart';
import 'package:base__pj_getx/services/ThemeServices.dart';
import 'package:base__pj_getx/services/notification_services.dart';
import 'package:base__pj_getx/util/constant.dart';
import 'package:base__pj_getx/widget/base_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final HomeController c = Get.put(HomeController());
    final DashboardController dashboard = Get.find();

    final userProfile = c.userProfile.value;
    // print(inspect(userProfile));
    return BaseScreen(
      title: "Favorite screen",
      leading: GestureDetector(
        onTap: () {
          ThemeServices().switchTheme();
          dashboard.notifyHelper
              .displayNotification(title: 'Them change', body: "123");
        },
        child: Icon(Icons.nightlight_round, size: 25),
      ),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 50),
              child: Column(
                children: [
                  Text("User profile ",
                      style: TextStyle(fontSize: 30, color: primaryColor)),
                  RichText(
                      text: TextSpan(
                    text: 'Email:  ',
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      TextSpan(
                        text: '${userProfile.email}',
                      ),
                    ],
                  )),
                  Text('${userProfile.firstName}'),
                  Text('${userProfile.lastName}')
                ],
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text("Books: ",
                    style: const TextStyle(fontSize: 30, color: Colors.amber)),
                SizedBox(
                  width: 50,
                ),
                GestureDetector(
                  onTap: () {
                    c.increment();
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.redAccent),
                    child: Text(
                      "+",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Obx(() => Text(
                      "${c.count}",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
              child: Text("Go to Other"),
              onPressed: () => Get.to(() => HomeDetailScreen())),
        ]),
      ),
    );
  }
}
