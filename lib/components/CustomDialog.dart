import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({Key key, this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xff19181E), borderRadius: BorderRadius.circular(30)),
        padding: EdgeInsets.only(top: 32, left: 20, right: 20, bottom: 24),
        width: MediaQuery.of(context).size.width - 40,
        child: child,
      ),
    );
  }
}
