import 'package:base__pj_getx/screen/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

class HomeDetailScreen extends StatelessWidget {
  const HomeDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeController c = Get.find();

    return Scaffold(body: Center(child: Text("${c.count}")));
  }
}
