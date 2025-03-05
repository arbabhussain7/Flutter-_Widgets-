//basic
import 'package:flutter/material.dart';

class StreamBuilderBasic extends StatefulWidget {
  const StreamBuilderBasic({super.key});

  @override
  State<StreamBuilderBasic> createState() => _StreamBuilderBasicState();
}

Stream<DateTime> generateNumber() async* {
  while (true) {
    await Future.delayed(Duration(seconds: 1));
    yield DateTime.now();
  }
}

class _StreamBuilderBasicState extends State<StreamBuilderBasic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text(
          'Stream Builder..',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StreamBuilder(
              stream: generateNumber(),
              builder: (context, snapshot) {
                return Center(
                  child: Text(
                    snapshot.data.toString(),
                    style: TextStyle(fontSize: 33, fontWeight: FontWeight.w700),
                  ),
                );
              })
        ],
      ),
    );
  }
}
