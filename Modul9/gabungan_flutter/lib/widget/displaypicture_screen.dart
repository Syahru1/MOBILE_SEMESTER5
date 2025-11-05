import 'dart:io';
import 'package:flutter/material.dart';
import '../widget/filter_carousel.dart'; // SESUAIKAN DENGAN FOLDER ANDA

class DisplayPictureScreen extends StatelessWidget {
  final String imagePath;

  const DisplayPictureScreen({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Display the Picture - NIM Anda')),
      
      body: PhotoFilterCarousel(
        imageFile: File(imagePath),
      ),
    );
  }
}
