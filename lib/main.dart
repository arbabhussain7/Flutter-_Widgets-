import 'package:flutter/material.dart';
import 'package:shared_preference/basic_widgets/about_dialog.dart';
import 'package:shared_preference/compressImg/compress_img_widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Widgets',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(color: Colors.lightBlueAccent),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: AboutDialogWidgets());
  }
}
