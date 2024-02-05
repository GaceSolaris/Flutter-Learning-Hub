import 'package:flutter/material.dart';

import 'dart:math';

void main() {
  return runApp(
    const MaterialApp(
      home: BallPage(),
    ),
  );
}

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text(
            'Ask Me Anything',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blue[800],
        ),
        body: Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  int changeBall(int ballNumber) {
    ballNumber = Random().nextInt(5) + 1;
    return ballNumber;
  }

  void updateNumber() {
    setState(() {
      ballNumber = changeBall(ballNumber);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                updateNumber();
              },
              child: Image.asset('images/ball$ballNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
