import 'package:capsule/components/CustomButton.dart';
import 'package:capsule/components/SideButton.dart';
import 'package:capsule/components/Wrapper.dart';
import 'package:capsule/modules/Home/components/DetailsCard.dart';
import 'package:capsule/modules/Home/components/DetailsCardPlaceholder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  Details({Key key}) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class Detail {
  Color backgroundColor;
  Widget image;
  String label;
  String id;

  Detail(this.backgroundColor, this.image, this.label, this.id);
}

class _DetailsState extends State<Details> {
  var detailsList = [];

  void _addDetail(Object data) {
    setState(() {
      detailsList.addAll(data);
    });
  }

  void _removeDetail(String id) {
    setState(() {
      detailsList.removeWhere((item) => item.id == id);
    });
  }

  Widget details() {
    final children = <Widget>[];

    for (var i = 0; i < detailsList.length; i++) {
      var elem = detailsList[i];
      children.add(new DetailsCard(
        colors: elem.backgroundColor,
        image: elem.image,
        label: elem.label,
        remove: () {
          _removeDetail(elem.id);
        },
      ));
    }

    return Row(
      children: children,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Wrapper(
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Add details',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 17),
              ),
            ),
          ),
          Wrapper(
            child: Container(
              margin: EdgeInsets.only(top: 2),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'And let us find a playlist that suits you 100%',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 14, color: Colors.grey[400]),
                ),
              ),
            ),
          ),
          Container(
            height: 154,
            margin: EdgeInsets.only(top: 24),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                    margin: EdgeInsets.only(right: 16, left: 20),
                    child: SideButton()),
                detailsList.length > 0
                    ? DetailsCardPlaceholder()
                    : Row(
                        children: [
                          DetailsCard(
                            image:
                                Image.asset('assets/images/samples/cloud.png'),
                            colors: [Colors.blue[700], Colors.blue[800]],
                            label: 'It is sunny',
                            remove: () {
                              _removeDetail('ede');
                            },
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          DetailsCard(
                            image:
                                Image.asset('assets/images/samples/donut.png'),
                            colors: [Colors.purple[300], Colors.purple],
                            label: 'At Starbucks',
                            remove: () {
                              _removeDetail('ede');
                            },
                          ),
                          SizedBox(
                            width: 16,
                          ),
                        ],
                      )
              ],
            ),
          ),
          Wrapper(
            child: Container(
              margin: EdgeInsets.only(top: 16),
              child: CustomButton(
                label: "Continue the experience",
              ),
            ),
          )
        ],
      ),
    );
  }
}
