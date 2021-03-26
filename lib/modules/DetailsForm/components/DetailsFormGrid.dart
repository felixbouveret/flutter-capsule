import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsFormGrid extends StatefulWidget {
  DetailsFormGrid({Key key, this.title, this.desc, this.margin})
      : super(key: key);

  final String title;
  final String desc;
  final Object margin;

  @override
  _DetailsFormGridState createState() => _DetailsFormGridState();
}

class _DetailsFormGridState extends State<DetailsFormGrid> {
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
          GridView.count(crossAxisCount: 2, children: [
            // Container(
            //   height: 100,
            //   width: 100,
            //   color: Colors.red,
            // ),
            // Container(
            //   height: 100,
            //   color: Colors.red,
            // ),
            // Container(
            //   height: 100,
            //   color: Colors.red,
            // ),
            // Container(
            //   height: 100,
            //   color: Colors.red,
            // ),
          ])
        ],
      ),
    );
  }
}
