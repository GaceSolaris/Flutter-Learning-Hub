import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('I Am Poor'),
          backgroundColor: Colors.purple[500],
          centerTitle: true,
          foregroundColor: Colors.white,
        ),
        backgroundColor: const Color.fromRGBO(198, 230, 192, 1),
        body: const Center(
          child: Image(image: AssetImage('images/emptywallet.png')),
        ),
      ),
    ),
  );
}
