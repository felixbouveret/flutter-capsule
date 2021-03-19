import 'package:flutter/material.dart';

class Increment extends StatefulWidget {
  const Increment({Key key}) : super(key: key);

  @override
  _IncrementState createState() => _IncrementState();
}

class _IncrementState extends State<Increment> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'You have pushed the button this many times:',
          ),
          Text(
            '$_counter',
            style: Theme.of(context).textTheme.headline4,
          ),
          ElevatedButton(onPressed: _incrementCounter, child: Text('test'))
        ],
      ),
    );
  }
}
