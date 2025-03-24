import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:image_picker/image_picker.dart';

class CompressImgWidgets extends StatefulWidget {
  const CompressImgWidgets({super.key});

  @override
  State<CompressImgWidgets> createState() => _CompressImgWidgetsState();
}

class _CompressImgWidgetsState extends State<CompressImgWidgets> {
  File? newImage;
  XFile? image;

  final picker = ImagePicker();

  Future ImagePickerFromGallery() async {
    image = (await picker.pickImage(source: ImageSource.gallery));
    final bytes = await image!.readAsBytes();

    final kb = bytes.length / 1024;
    final mb = kb / 1024;

    if (kDebugMode) {
      print('Original Images Size: ' + mb.toString());
    }
    final dir = await path_provider.getTemporaryDirectory();

    final targetPath = '${dir.absolute.path}/temp.jpg';
    final result = await FlutterImageCompress.compressAndGetFile(
        image!.path, targetPath,
        minHeight: 1080, minWidth: 1080, quality: 50);

    final data = await result!.readAsBytes();

    final newKb = data.length / 1024;
    final newMb = newKb / 1024;

    if (kDebugMode) {
      print('compress Image Size :' + newMb.toString());
    }

    newImage = File(result.path);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: const Text(
          'Image Compress',
          style: TextStyle(
              color: Colors.white, fontSize: 33, fontWeight: FontWeight.w800),
        ),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.redAccent,
        onPressed: () {
          ImagePickerFromGallery();
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        shape: CircleBorder(),
      ),
      body: Column(
        children: [
          if (image != null)
            SizedBox(
              child: Image.file(
                (File(newImage!.path)),
                fit: BoxFit.cover,
              ),
            )
        ],
      ),
    );
  }
}
