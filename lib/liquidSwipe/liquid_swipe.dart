import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class LiquidSwipeWidgets extends StatefulWidget {
  const LiquidSwipeWidgets({super.key});

  @override
  State<LiquidSwipeWidgets> createState() => _LiquidSwipeWidgetsState();
}

final LiquidController liquidController = LiquidController();
final List<Widget> pages = [
  Container(
    decoration: BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/dr-israr.png'))),
  ),
  Container(
    decoration: BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/molana-ishaq.png'))),
  ),
  Container(
    decoration: BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/sahil-sahb.png'))),
  ),
  Container(
    decoration: BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/engr-sahb.png'))),
  ),
  Container(
    decoration: BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/jawad-sahb.png'))),
  ),
  Container(
    decoration: BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/khalid-sahb.png'))),
  ),
];

class _LiquidSwipeWidgetsState extends State<LiquidSwipeWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: LiquidSwipe(
            pages: pages,
            liquidController: liquidController,
            enableLoop: true,
            fullTransitionValue: 500,
            slideIconWidget: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            // waveType: WaveType,
            onPageChangeCallback: (pages) {
              print('currrent index $pages');
            }));
  }
}
