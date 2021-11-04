import 'package:base__pj_getx/widget/base_screen.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
        title: "Message screen",
        child: Container(
          child: Text("Message screen"),
        ));
  }
}
