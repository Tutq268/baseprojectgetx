import 'package:flutter/material.dart';

class BaseScreen extends StatelessWidget {
  const BaseScreen(
      {Key? key,
      required this.title,
      this.leading,
      this.trailing,
      required this.child,
      this.onPress})
      : super(key: key);
  final String title;
  final List<Widget>? trailing;
  final Widget? leading;
  final Widget child;
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      appBar: AppBar(
          actions: trailing,
          leading: leading,
          elevation: 0.0,
          title: Text(title,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(color: Colors.white))),
      body: GestureDetector(
        child: child,
        onTap: () => FocusScope.of(context).unfocus(),
      ),
    );
  }
}
