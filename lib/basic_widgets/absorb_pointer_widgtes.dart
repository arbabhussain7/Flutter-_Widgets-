import 'package:flutter/material.dart';

class AbsorbPointerWidgtes extends StatelessWidget {
  const AbsorbPointerWidgtes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text(
          'Absorb Pointer ',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Stack(
          children: [
            SizedBox(
              height: 100,
              width: 200,
              child: ElevatedButton(
                onPressed: () {},
                child: null,
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrangeAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12))),
              ),
            ),
            SizedBox(
              height: 200,
              width: 100,
              child: AbsorbPointer(
                child: ElevatedButton(
                  onPressed: () {},
                  child: null,
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amberAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
