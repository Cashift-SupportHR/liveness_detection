import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class GetImage extends StatelessWidget {
  const GetImage({super.key});

  @override
  Widget build(BuildContext context) {
    openCamera(context);
    return const Placeholder();
  }

  Future<void> openCamera(BuildContext context) async {
    final file = await ImagePicker().pickImage(source: ImageSource.camera);
    Navigator.pop(context, file);
  }
}
