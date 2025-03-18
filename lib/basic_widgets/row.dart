import 'package:flutter/material.dart';

class RowWidges extends StatelessWidget {
  const RowWidges({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        title: Text('Row Widgets'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Row 1
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 55,
                height: 66,
                color: Colors.pink,
              ),
              const SizedBox(
                width: 22,
              ),
              Container(
                width: 55,
                height: 66,
                color: Colors.amber,
              ),
              const SizedBox(
                width: 22,
              ),
              Container(
                width: 55,
                height: 66,
                color: Colors.lightGreen,
              ),
              const SizedBox(
                width: 22,
              ),
              Container(
                width: 55,
                height: 66,
                color: Colors.pink,
              )
            ],
          ),
          SizedBox(
            height: 44,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 66,
                height: 55,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.cyanAccent),
              ),
              SizedBox(
                width: 22,
              ),
              Container(
                width: 66,
                height: 55,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.red),
              ),
              SizedBox(
                width: 22,
              ),
              Container(
                width: 66,
                height: 55,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.orangeAccent),
              ),
              SizedBox(
                width: 22,
              ),
              Container(
                width: 66,
                height: 55,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
              ),
              SizedBox(
                width: 22,
              ),
            ],
          )
        ],
      ),
    );
  }
}
