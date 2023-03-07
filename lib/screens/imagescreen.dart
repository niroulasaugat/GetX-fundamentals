import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/model/imagepicker.dart';


class ImageScreen extends StatefulWidget {
  const ImageScreen({super.key});

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  final ImageController _imageController = Get.put(ImageController());

  @override
  Widget build(BuildContext context) {
    print('Imagepick');
    return Scaffold(
      
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
        child: Obx(() => 
         Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: _imageController.ImagePath.isNotEmpty? 
                              FileImage(File(_imageController.ImagePath.toString())): null,
      
            ),
            TextButton
            (onPressed: (){
              _imageController.getImage();
            },
             child: Text('Pick Image')
             )
          ],
      
        ),
        ),
      ),
    );
  }
}