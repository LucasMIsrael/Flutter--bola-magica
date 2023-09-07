import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: const Text('Pergunte qualquer coisa'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: const BallPage(),
    ),
  ));
}

class BallPage extends StatefulWidget {
  const BallPage({super.key});

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  var ballAnswer = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(16),
              ),
              onPressed: () {
                rollDie();
              },
              child: Image.asset('images/ball$ballAnswer.png'),
            ),
          ),
        ],
      ),
    );
  }

  void rollDie() {
    setState(() {
      var random = Random();
      ballAnswer = random.nextInt(5) + 1;
    });
  }
}
