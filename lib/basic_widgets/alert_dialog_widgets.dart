import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class AlertDialogWidgets extends StatelessWidget {
  const AlertDialogWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.deepPurpleAccent,
          title: const Text(
            'Alert Dialog  ',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.limeAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12))),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text(
                          'My Homies ',
                        ),
                        content: const Text('This File is Harm Do not Touch '),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Get.back();
                              },
                              child: const Text('Close'))
                        ],
                      );
                    });
              },
              child: const Text('Show Alert Box')),
        ));
  }
}
