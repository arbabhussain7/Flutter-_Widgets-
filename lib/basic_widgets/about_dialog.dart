import 'package:flutter/material.dart';

class AboutDialogWidgets extends StatelessWidget {
  const AboutDialogWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.cyanAccent,
          title: const Text(
            'About Dialog ',
            style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 23,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: SafeArea(
            child: Center(
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12))),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return const AboutDialog(
                        applicationIcon: FlutterLogo(),
                        applicationLegalese: 'Box are Empty',
                        applicationName: 'My Fruite',
                        applicationVersion: 'version 1.0.0 ',
                        children: [Text('This is a Text  by Flutter Dev')],
                      );
                    });
              },
              child: const Text(
                'Dialog Box Here',
                style: TextStyle(color: Colors.cyanAccent),
              )),
        )));
  }
}
