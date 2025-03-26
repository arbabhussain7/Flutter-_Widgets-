import 'package:flutter/material.dart';

class AboutListTileWidgets extends StatelessWidget {
  const AboutListTileWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.deepOrangeAccent,
          title: const Text(
            'About ListTile',
            style: TextStyle(
                color: Colors.purpleAccent,
                fontSize: 23,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: SafeArea(
            child: Center(
                child: Align(
          alignment: Alignment.center,
          child: AboutListTile(
            icon: Icon(Icons.info),
            applicationIcon: FlutterLogo(),
            applicationLegalese: 'Legalesse',
            applicationVersion: 'version 1.9 ',
            applicationName: 'Flutter App ',
            aboutBoxChildren: [Text('This is My App I have Fun to make this ')],
          ),
        ))));
  }
}
