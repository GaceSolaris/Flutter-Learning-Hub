import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

void playSound(int soundNumber) {
  final player = AudioPlayer();
  player.play(AssetSource('note$soundNumber.wav'));
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero),
                ),
                onPressed: () {
                  playSound(1);
                },
                child: const Text(''),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.orange,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero),
                ),
                onPressed: () {
                  playSound(2);
                },
                child: const Text(''),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero),
                ),
                onPressed: () {
                  playSound(3);
                },
                child: const Text(''),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero),
                ),
                onPressed: () {
                  playSound(4);
                },
                child: const Text(''),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green[900],
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero),
                ),
                onPressed: () {
                  playSound(5);
                },
                child: const Text(''),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero),
                ),
                onPressed: () {
                  playSound(6);
                },
                child: const Text(''),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.purple,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero),
                ),
                onPressed: () {
                  playSound(7);
                },
                child: const Text(''),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
