import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:shared_preference/animatedWidgets/animated_align_widgets.dart';
import 'package:shared_preference/animatedWidgets/animated_builder_widgets.dart';
import 'package:shared_preference/basic_widgets/about_dialog.dart';
import 'package:shared_preference/basic_widgets/about_list_tile_widgets.dart';
import 'package:shared_preference/basic_widgets/absorb_pointer_widgtes.dart';
import 'package:shared_preference/basic_widgets/alert_dialog_widgets.dart';
import 'package:shared_preference/compressImg/compress_img_widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Widgets',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(color: Colors.lightBlueAccent),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: AnimatedBuilderWidgets());
  }
}
