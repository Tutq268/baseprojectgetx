import 'package:base__pj_getx/screen/add/add_screen.dart';
import 'package:base__pj_getx/screen/home/home_screen.dart';
import 'package:base__pj_getx/screen/message/message_screen.dart';
import 'package:base__pj_getx/screen/users/user_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

import 'dashboard_controller.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      builder: (controller) {
        return Scaffold(
          body: IndexedStack(
            index: controller.tabIndex,
            children: [
              HomeScreen(),
              AddScreen(),
              MessageScreen(),
              UserScreen(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: 'Favorite',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.ring_volume),
                label: 'Message',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Account',
              ),
            ],
          ),
        );
      },
    );
  }
}
