import 'package:capsule/utils/custom_icons_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SideButton extends StatelessWidget {
  const SideButton({Key key, this.action, this.isDark}) : super(key: key);

  final bool isDark;
  final Function action;

  @override
  Widget build(BuildContext context) {
    var backColor = Colors.white.withOpacity(.1);

    if (isDark != null) {
      backColor = Colors.black;
    }

    return InkWell(
        onTap: action,
        child: Container(
          height: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: backColor),
          child: Icon(
            CustomIcons.plus,
            color: Colors.white.withOpacity(.2),
          ),
        ));
  }
}
