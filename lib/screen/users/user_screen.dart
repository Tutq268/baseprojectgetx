import 'package:base__pj_getx/widget/base_screen.dart';
import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
        title: "Account screen",
        child: Container(
          child: Text("Account screen"),
        ));
  }
}
