import 'package:flutter/material.dart';

class TextWidgets extends StatelessWidget {
  const TextWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Text Widgets ',
          style: TextStyle(fontSize: 22, color: Colors.cyanAccent),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(
            'Hello World ',
            style: TextStyle(fontSize: 22, color: Colors.greenAccent),
          )
        ],
      ),
    );
  }
}
