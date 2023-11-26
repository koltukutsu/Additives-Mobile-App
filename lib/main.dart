import 'package:additives/presentation/index.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';
import 'package:sizer/sizer.dart';

import 'data/data.dart';
late List<CameraDescription> _cameras;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  _cameras = await availableCameras();
  runApp(AppStarter(cameras: _cameras));
}
