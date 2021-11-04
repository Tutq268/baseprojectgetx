import 'package:base__pj_getx/widget/base_screen.dart';
import 'package:flutter/material.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
        title: "Favorite screen",
        child: Container(
          child: Text("favorite screen"),
        ));
  }
}
