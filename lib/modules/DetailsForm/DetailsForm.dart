import 'package:capsule/components/CustomButton.dart';
import 'package:capsule/components/RoundIcon.dart';
import 'package:capsule/modules/DetailsForm/components/DetailsFormGrid.dart';
import 'package:capsule/modules/DetailsForm/components/DetailsFormInput.dart';
import 'package:capsule/utils/custom_icons_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsForm extends StatefulWidget {
  DetailsForm({Key key, this.action}) : super(key: key);

  final Function action;

  @override
  _DetailsFormState createState() => _DetailsFormState();
}

class _DetailsFormState extends State<DetailsForm> {
  var switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DetailsFormInput(
            title: 'Location',
            desc: 'Share music with your friends nearby',
            label: 'Add my location',
            icon: Image.asset('assets/images/samples/flag.png'),
            child: Transform.scale(
              scale: .8,
              child: CupertinoSwitch(
                  value: switchValue,
                  onChanged: (newValue) {
                    setState(() {
                      switchValue = newValue;
                    });
                  }),
            )),
        DetailsFormInput(
            margin: EdgeInsets.only(top: 40),
            title: 'Set a timer',
            desc: 'Need a playlist for a short amount of time?',
            label: 'Set a timer',
            icon: Image.asset('assets/images/samples/alert.png'),
            child: InkWell(
              child: RoundIcon(
                image: Icon(
                  CustomIcons.plus,
                  size: 18,
                ),
                size: 28,
                backgroundColor: Color(0x33ffffff),
              ),
            )),
        DetailsFormGrid(
          margin: EdgeInsets.only(top: 40),
          title: 'Additional',
          desc:
              'Some elements could help us to create a playlist that suits you a 100%',
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          child: CustomButton(
            label: 'Add options',
            isPurple: true,
            action: () {
              widget.action(
                [Colors.blue[700], Colors.blue[800]],
                Image.asset('assets/images/samples/cloud.png'),
                'It is sunny',
              );
              Navigator.pop(context);
            },
          ),
        )
      ],
    );
  }
}
