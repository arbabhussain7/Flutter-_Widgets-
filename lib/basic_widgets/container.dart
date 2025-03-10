import 'package:flutter/material.dart';

class ContainerWidgets extends StatelessWidget {
  const ContainerWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Container',
          style: TextStyle(
            fontSize: 18,
            color: Colors.redAccent,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            child: Text(
              'Hey I am Container ',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  color: Colors.amber),
            ),
          ),
          Container(
            width: 121,
            height: 121,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.blueAccent,
                  Colors.deepOrangeAccent,
                  Colors.greenAccent,
                  Colors.amberAccent
                ]),
                border: Border.all(),
                borderRadius: BorderRadius.circular(12)),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 22, vertical: 11),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'data:image/jpeg;base64,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'))),
          )
        ],
      ),
    );
  }
}
