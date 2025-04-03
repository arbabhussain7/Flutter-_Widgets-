import 'dart:math' as math;

import 'package:flutter/material.dart';

class AnimatedBuilderWidgets extends StatefulWidget {
  const AnimatedBuilderWidgets({super.key});

  @override
  State<AnimatedBuilderWidgets> createState() => _AnimatedBuilderWidgetsState();
}

class _AnimatedBuilderWidgetsState extends State<AnimatedBuilderWidgets>
    with TickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(vsync: this, duration: Duration(seconds: 6))
        ..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
          child: Image.asset('assets/images/dr-israr.png'),
          animation: _controller,
          builder: (context, Widget? child) {
            return Transform.rotate(
              angle: _controller.value * 2.0 * math.pi,
              child: child,
            );
          }),
    );
  }
}
