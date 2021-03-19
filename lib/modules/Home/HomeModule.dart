import 'package:capsule/modules/Home/components/Increment.dart';
import 'package:flutter/material.dart';

class HomeModule extends StatelessWidget {
  HomeModule({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 16),
          child: Text(
            'data',
            style: TextStyle(fontSize: 32),
          ),
        ),
        Container(
          height: 400,
          margin: EdgeInsets.only(bottom: 32),
          child: GridView.count(
            crossAxisCount: 2,
            shrinkWrap: false,
            primary: true,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            children: [
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[800]),
                child: Increment(),
              ),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[800]),
                child: Increment(),
              ),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[800]),
                child: Increment(),
              ),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[800]),
                child: Increment(),
              )
            ],
            physics: ClampingScrollPhysics(),
          ),
        ),
        Container(
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
