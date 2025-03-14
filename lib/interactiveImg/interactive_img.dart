import 'package:flutter/material.dart';

class InteractiveImg extends StatelessWidget {
  const InteractiveImg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InteractiveViewer(
          minScale: 0.1,
          maxScale: 193.3,
          child: Image.network(
              fit: BoxFit.cover,
              'https://images.unsplash.com/photo-1735480222193-3fe22ffd70b6?q=80&w=1528&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
        ),
      ),
    );
  }
}
