import 'package:capsule/components/RoundIcon.dart';
import 'package:capsule/utils/custom_icons_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsFormInput extends StatefulWidget {
  DetailsFormInput(
      {Key key,
      this.title,
      this.desc,
      this.icon,
      this.label,
      this.child,
      this.margin})
      : super(key: key);

  final String title;
  final String desc;
  final Object icon;
  final String label;
  final Widget child;
  final Object margin;

  @override
  _DetailsFormInputState createState() => _DetailsFormInputState();
}

class _DetailsFormInputState extends State<DetailsFormInput> {
  var switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: widget.margin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: TextStyle(fontSize: 16),
          ),
          Container(
            margin: EdgeInsets.only(top: 4),
            child: Text(
              widget.desc,
              style:
                  TextStyle(fontSize: 14, color: Colors.white.withOpacity(.6)),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            margin: EdgeInsets.only(top: 16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xff242429)),
            child: Row(
              children: [
                RoundIcon(
                  size: 40,
                  image: widget.icon,
                  backgroundColor: Color(0xff7FC5F8),
                ),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.only(left: 16),
                        child: Text(widget.label))),
                widget.child,
              ],
            ),
          )
        ],
      ),
    );
  }
}
