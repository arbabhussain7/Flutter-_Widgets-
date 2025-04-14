import 'package:flutter/material.dart';

class AnimatedTextsytle extends StatefulWidget {
  AnimatedTextsytle({super.key});

  @override
  State<AnimatedTextsytle> createState() => _AnimatedTextsytleState();
}

class _AnimatedTextsytleState extends State<AnimatedTextsytle> {
  bool first = true;

  Color color = Colors.amber;

  double fontSize = 60;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 120,
          child: AnimatedDefaultTextStyle(
              child: Text('Flutterian '),
              style: TextStyle(
                  fontSize: fontSize,
                  color: color,
                  fontWeight: FontWeight.bold),
              duration: Duration(microseconds: 300)),
        ),
        TextButton(
            onPressed: () {
              setState(() {
                fontSize = first ? 90 : 60;
                color = first ? Colors.pink : Colors.purple;
                first = !first;
              });
            },
            child: Text('Style here '))
      ],
    );
  }
}
