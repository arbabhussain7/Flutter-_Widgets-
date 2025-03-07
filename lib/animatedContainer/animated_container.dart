import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainers extends StatefulWidget {
  const AnimatedContainers({super.key});

  @override
  State<AnimatedContainers> createState() => _AnimatedContainersState();
}

class _AnimatedContainersState extends State<AnimatedContainers> {
  double height = 100;
  double width = 100;
  Color color = Colors.amber;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Animation Container',
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.w800, color: Colors.purple),
        ),
      ),
      body: Center(
        child: AnimatedContainer(
          decoration: BoxDecoration(
              color: color,
              border: Border.all(color: Colors.blueGrey),
              borderRadius: BorderRadius.circular(12)),
          width: width,
          height: height,
          duration: Duration(milliseconds: 800),
          curve: Curves.fastEaseInToSlowEaseOut,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink,
        onPressed: () {
          final random = Random();
          height = random.nextInt(300).toDouble();
          width = random.nextInt(300).toDouble();
          color = Color.fromRGBO(
              random.nextInt(232), random.nextInt(232), random.nextInt(232), 1);

          setState(() {});
        },
        child: Icon(
          Icons.refresh,
          color: Colors.white,
        ),
      ),
    );
  }
}
