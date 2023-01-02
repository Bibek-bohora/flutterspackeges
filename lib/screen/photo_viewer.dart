import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

// ignore: must_be_immutable
class PhotScreen extends StatelessWidget {
  String imageUrl;

  PhotScreen(this.imageUrl, {super.key});

  @override
  Widget build(BuildContext context) {
    return PhotoView(
      imageProvider: NetworkImage(imageUrl),
    );
  }
}
