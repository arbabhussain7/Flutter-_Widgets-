import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShaderMaskWidgest extends StatelessWidget {
  ShaderMaskWidgest({super.key});

//Grident
  final Gradient gradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Colors.cyan,
        Colors.blueAccent,
        Colors.pinkAccent,
        CupertinoColors.darkBackgroundGray
      ]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'Shader Mask',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ShaderMask(
              shaderCallback: (Rect bounds) {
                return gradient.createShader(bounds);
              },
              blendMode: BlendMode.srcIn,
              child: Text(
                'Heye I Am Arbab!!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),
            ),
            ShaderMask(
              shaderCallback: (Rect bound) {
                return gradient.createShader(bound);
              },
              blendMode: BlendMode.srcIn,
              child: Icon(
                Icons.logo_dev_sharp,
                size: 211,
              ),
            )
          ],
        ),
      ),
    );
  }
}
