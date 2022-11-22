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
            )),
      ),
    );
