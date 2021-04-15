import 'package:capsule/components/Carousel.dart';
import 'package:capsule/components/CustomButton.dart';
import 'package:capsule/components/customDialog.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsWeatherPopup extends StatefulWidget {
  DetailsWeatherPopup({Key key, this.callback}) : super(key: key);

  final Function callback;

  @override
  _DetailsWeatherPopupState createState() => _DetailsWeatherPopupState();
}

class _DetailsWeatherPopupState extends State<DetailsWeatherPopup> {
  var selectedWeather;
  var items = [
    Image.asset('assets/images/samples/cloud.png'),
    Image.asset('assets/images/samples/donut.png'),
    Image.asset('assets/images/samples/cloud.png')
  ];

  @override
  void initState() {
    super.initState();
    selectedWeather = items[0];
  }

  dynamic _setSelectedWeather(id, reason) {
    setState(() {
      selectedWeather = items[id];
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomDialog(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'What’s the weather like ?',
            style: TextStyle(
                color: Colors.white, fontSize: 17, fontWeight: FontWeight.w500),
          ),
          Text(
            'It can affect what you want to listen',
            style: TextStyle(
              color: Colors.white60,
              fontSize: 14,
            ),
          ),
          Carousel(
            items: items,
            options: CarouselOptions(
                viewportFraction: 1,
                initialPage: 0,
                enableInfiniteScroll: false,
                autoPlay: false,
                enlargeCenterPage: false,
                scrollDirection: Axis.horizontal,
                onPageChanged: _setSelectedWeather),
          ),
          CustomButton(
            action: () {
              widget.callback(selectedWeather);
              Navigator.pop(context);
            },
            isPurple: true,
            label: 'Choose this weather',
          )
        ],
      ),
    );
  }
}
