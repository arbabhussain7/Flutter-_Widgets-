import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class InternetConnectionCheck extends StatelessWidget {
  InternetConnectionCheck({super.key});

  Connectivity connectivity = Connectivity();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Internet Connectivity',
            style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 22,
                fontWeight: FontWeight.w700),
          ),
        ),
        body: StreamBuilder<List<ConnectivityResult>>(
            stream: connectivity.onConnectivityChanged,
            builder: (_, snapshot) {
              return CustomInternetConnectivityWidgets(
                snapshot: snapshot,
                widget: Text('Internet Connected '),
              );
            }));
  }
}

class CustomInternetConnectivityWidgets extends StatelessWidget {
  CustomInternetConnectivityWidgets(
      {Key? key, required this.snapshot, required this.widget})
      : super(key: key);
  final AsyncSnapshot<List<ConnectivityResult>> snapshot;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    switch (snapshot.connectionState) {
      case ConnectionState.active:
        final state = snapshot.data;
        if (state != null && state.contains(ConnectivityResult.none)) {
          return const Center(child: Text('Not Connected '));
        } else {
          return widget;
        }

      default:
        return Text('');
    }
  }
}
