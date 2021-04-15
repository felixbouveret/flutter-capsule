import 'package:capsule/components/customDialog.dart';
import 'package:capsule/modules/DetailsForm/components/DetailsFormCard.dart';
import 'package:capsule/modules/DetailsForm/components/DetailsWeatherPopup.dart';
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
  var weather;

  void _setWeather(Object data) {
    setState(() {
      if (weather != null) {
        weather = null;
      } else {
        weather = data;
      }
    });
    print(data);
  }

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
                      selectedImage: weather,
                      defaultImage:
                          Image.asset('assets/images/samples/cloud.png'),
                      onTap: () {
                        weather == null
                            ? showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return DetailsWeatherPopup(
                                    callback: (weather) {
                                      _setWeather(weather);
                                    },
                                  );
                                })
                            : _setWeather(weather);
                      }),
                  DetailsFormCard(
                    label: 'Add a color',
                    selectedImage: null,
                    defaultImage:
                        Image.asset('assets/images/samples/cloud.png'),
                  ),
                  DetailsFormCard(
                      label: 'Call me by your name',
                      background:
                          AssetImage("assets/images/samples/music.png")),
                  DetailsFormCard(
                      label: 'Add a picture',
                      selectedImage: null,
                      defaultImage:
                          Image.asset('assets/images/samples/cloud.png')),
                ]),
          )
        ],
      ),
    );
  }
}
