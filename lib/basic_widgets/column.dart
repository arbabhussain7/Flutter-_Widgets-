import 'package:flutter/material.dart';

class Columnwidgets extends StatelessWidget {
  const Columnwidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Column Widgets'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 33,
              ),
              Column(
                children: [
                  Container(
                    width: 55,
                    height: 44,
                    decoration: BoxDecoration(
                        color: Colors.pinkAccent,
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(18)),
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  Container(
                    width: 55,
                    height: 44,
                    decoration: BoxDecoration(
                        color: Colors.lightGreenAccent,
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(18)),
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  Container(
                    width: 55,
                    height: 44,
                    decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(18)),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
