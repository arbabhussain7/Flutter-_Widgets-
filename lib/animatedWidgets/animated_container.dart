import 'package:flutter/material.dart';

class AnimatedContainerWidgets extends StatefulWidget {
  const AnimatedContainerWidgets({super.key});

  @override
  State<AnimatedContainerWidgets> createState() =>
      _AnimatedContainerWidgetsState();
}

class _AnimatedContainerWidgetsState extends State<AnimatedContainerWidgets> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(
          () {
            selected = !selected;
          },
        );
      },
      child: Center(
        child: AnimatedContainer(
          width: selected ? 200 : 500,
          height: selected ? 500 : 200,
          color: selected ? Colors.amber : Colors.purpleAccent,
          alignment: selected ? Alignment.center : Alignment.topCenter,
          curve: Curves.fastLinearToSlowEaseIn,
          duration: Duration(seconds: 4),
          child: Image.asset('assets/images/jawad-sahb.png'),
        ),
      ),
    );
  }
}
