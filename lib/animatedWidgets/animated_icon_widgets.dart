import 'package:flutter/material.dart';

class AnimatedIconWidgets extends StatefulWidget {
  const AnimatedIconWidgets({super.key});

  @override
  State<AnimatedIconWidgets> createState() => _AnimatedIconWidgetsState();
}

class _AnimatedIconWidgetsState extends State<AnimatedIconWidgets>
    with TickerProviderStateMixin {
  bool isPlay = false;
  late AnimationController controller;
  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 1));
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            if (isPlay == false) {
              controller.forward();
              isPlay = true;
            } else {
              controller.reverse();
              isPlay = false;
            }
          },
          child: AnimatedIcon(
            icon: AnimatedIcons.pause_play,
            progress: controller,
            size: 100,
          ),
        ),
      ),
    );
  }
}
