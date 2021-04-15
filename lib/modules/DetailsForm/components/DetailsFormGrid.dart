import 'package:capsule/modules/DetailsForm/components/DetailsFormCard.dart';
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
          Container(
            margin: EdgeInsets.only(top: 20),
            child: GridView.count(
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                crossAxisCount: 2,
                primary: false,
                shrinkWrap: true,
                children: [
                  DetailsFormCard(
                      label: 'What’s the weather like?',
                      image: Image.asset('assets/images/samples/cloud.png')),
                  DetailsFormCard(
                      label: 'Add a color',
                      image: Image.asset('assets/images/samples/cloud.png')),
                  DetailsFormCard(
                      label: 'Call me by your name',
                      background:
                          AssetImage("assets/images/samples/music.png")),
                  DetailsFormCard(
                      label: 'Add a picture',
                      image: Image.asset('assets/images/samples/cloud.png')),
                ]),
          )
        ],
      ),
    );
  }
}
