import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue[500],
          appBar: AppBar(
            backgroundColor: Colors.blue[800],
            title: Center(
              child: Text(
                'Ask me anything!',
                style: TextStyle(color: Colors.white, fontSize: 36),
              ),
            ),
          ),
          body: Body8Ball(),
        ),
      ),
    );

class Body8Ball extends StatefulWidget {
  const Body8Ball({Key key}) : super(key: key);

  @override
  State<Body8Ball> createState() => _Body8BallState();
}

class _Body8BallState extends State<Body8Ball> {
  @override
  int answer = 1;
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(
            () {
              answer = Random().nextInt(4) + 1;
            },
          );
        },
        child: Image.asset('images/ball$answer.png'),
      ),
    );
  }
}
