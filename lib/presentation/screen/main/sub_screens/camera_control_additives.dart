import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import '../components/camera_preview.dart';

class CameraControlAdditivesScreen extends StatefulWidget {
  const CameraControlAdditivesScreen({super.key, required this.camera});
  final CameraDescription camera;

  @override
  State<CameraControlAdditivesScreen> createState() => _CameraControlAdditivesScreenState();
}

class _CameraControlAdditivesScreenState extends State<CameraControlAdditivesScreen> {
  @override
  Widget build(BuildContext context) {
    return TakePictureScreen(
      camera: widget.camera,
    );
  }
}
