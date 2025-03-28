import 'package:flutter/material.dart';

class AnimatedAlignWidgets extends StatefulWidget {
  const AnimatedAlignWidgets({super.key});

  @override
  State<AnimatedAlignWidgets> createState() => _AnimatedAlignWidgetsState();
}

class _AnimatedAlignWidgetsState extends State<AnimatedAlignWidgets> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: const Text(
            'Animation Align',
            style: TextStyle(
                fontSize: 33,
                fontWeight: FontWeight.w800,
                color: Colors.redAccent),
          ),
        ),
        body: GestureDetector(
          onTap: () {
            setState(() {
              isSelected = !isSelected;
            });
          },
          child: Center(
            child: Container(
              width: double.infinity,
              height: 250,
              color: Colors.lightBlue,
              child: AnimatedAlign(
                alignment:
                    isSelected ? Alignment.bottomLeft : Alignment.topRight,
                duration: Duration(seconds: 1),
                curve: Curves.fastLinearToSlowEaseIn,
                child: Image.asset(
                  'assets/images/engr-sahb.png',
                  width: 90,
                  height: 90,
                ),
              ),
            ),
          ),
        ));
  }
}
