// ignore_for_file: prefer_const_constructors, unused_local_variable, avoid_print, prefer_final_fields, unnecessary_nullable_for_final_variable_declarations

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerWidget extends StatefulWidget {
  const ImagePickerWidget({super.key});

  @override
  State<ImagePickerWidget> createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  ImagePicker _picker = ImagePicker();
  XFile? file;
  List<XFile>? files;
  //XFILE IS CROSS PLATFORM FILE SO USING IT
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Picker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 300,
                width: double.infinity,
                color: Colors.grey.shade200,
                child: Center(
                    child: file == null
                        ? Text('Image not Picked')
                        : Image.file(
                            File(file!.path),
                            fit: BoxFit.cover,
                          ))),
            //async function have aspect of time
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () async {
                  final XFile? photo =
                      await _picker.pickImage(source: ImageSource.gallery);
                  setState(() {
                    file = photo;
                  });
                  print('Image Picked');
                  print(photo!.path);
                },
                child: Text('Pick Image')),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () async {
                  final List<XFile>? photos = await _picker.pickMultiImage();
                  setState(() {
                    files = photos;
                  });
                  print('Image Picked');
                  for (int i = 0; i < files!.length; i++) {
                    print(files![i].path);
                  }
                },
                child: Text('Pick Images'))
          ],
        ),
      ),
    );
  }
}
