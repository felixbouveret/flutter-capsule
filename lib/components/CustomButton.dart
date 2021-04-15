import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key key, this.label, this.action, this.isDark, this.isPurple})
      : super(key: key);

  final String label;
  final bool isDark;
  final bool isPurple;
  final Function action;

  @override
  Widget build(BuildContext context) {
    var backColor = Colors.white;
    var textColor = Colors.black;

    if (isDark != null) {
      backColor = Colors.grey[900];
      textColor = Colors.white;
    }
    if (isPurple != null) {
      backColor = Colors.deepPurple[600];
      textColor = Colors.white;
    }

    return Material(
      child: InkWell(
          onTap: action,
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: backColor),
            child: Text(label,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: textColor,
                )),
          )),
    );
  }
}
