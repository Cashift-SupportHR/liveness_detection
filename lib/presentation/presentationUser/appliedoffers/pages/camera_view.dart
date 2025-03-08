import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:permission_handler/permission_handler.dart';

class CameraView extends StatefulWidget {
  final Function(File) onGetFile;

  const CameraView({Key? key,required this.onGetFile})
      : super(key: key);

  @override
  _CameraViewState createState() => _CameraViewState();
}


class _CameraViewState extends State<CameraView> {
  CameraController? _controller;
  bool _isInitialized = false;

  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    checkCameraPermission();
    final cameras = await availableCameras(); // Get the list of available cameras
    _controller = CameraController(cameras[0], ResolutionPreset.high,enableAudio: false);
    await _controller!.initialize();
    setState(() {
      _isInitialized = true;
    });
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_isInitialized) {
      return Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    Timer(Duration(seconds: 1), () {
      _captureImage();
    });
    return  CameraPreview(_controller!);
  }


  Future<void> checkCameraPermission() async {
    if (await Permission.camera.request().isGranted) {
      print("Camera permission granted");
    } else {
      print("Camera permission denied");
    }
  }

  Future<void> _captureImage() async {
    try {
      final image = await _controller!.takePicture(); // Capture the image
      widget. onGetFile(File(image.path));
      print("Image saved at: ${image.path}");
      // Display or process the image
    } catch (e) {
      print("Error capturing image: $e");
    }
  }
}
