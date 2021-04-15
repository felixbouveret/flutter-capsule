import 'package:capsule/components/CustomButton.dart';
import 'package:capsule/components/SideButton.dart';
import 'package:capsule/components/Wrapper.dart';
import 'package:capsule/modules/DetailsForm/DetailsForm.dart';
import 'package:capsule/modules/Home/components/DetailsCard.dart';
import 'package:capsule/modules/Home/components/DetailsCardPlaceholder.dart';
import 'package:capsule/utils/showModal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class Details extends StatefulWidget {
  Details({Key key}) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class Detail {
  List<Color> colors;
  Widget image;
  String label;
  String id;

  Detail(this.colors, this.image, this.label, this.id);
}

class _DetailsState extends State<Details> {
  var detailsList = [];

  void _addDetail(Object data) {
    setState(() {
      detailsList.add(data);
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
      children.addAll([
        SizedBox(
          width: 16,
        ),
        new DetailsCard(
          colors: elem.colors,
          image: elem.image,
          label: elem.label,
          remove: () {
            _removeDetail(elem.id);
          },
        ),
      ]);
    }

    return Container(
      margin: EdgeInsets.only(right: 20),
      child: Row(
        children: children,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var uuid = Uuid();
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
                    margin: EdgeInsets.only(left: 20),
                    child: SideButton(
                      action: () {
                        showModal(context, DetailsForm(
                          action: (color, image, text) {
                            _addDetail(
                                new Detail(color, image, text, uuid.v4()));
                          },
                        ), 'Add options');
                      },
                    )),
                detailsList.length <= 0
                    ? Row(children: [
                        SizedBox(
                          width: 16,
                        ),
                        DetailsCardPlaceholder(),
                      ])
                    : details()
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
          ),
        ],
      ),
    );
  }
}
