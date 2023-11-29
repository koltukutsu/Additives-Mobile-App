import 'dart:math';

import 'package:additives/presentation/index.dart';
// import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';
import 'package:sizer/sizer.dart';

import 'data/data.dart';

late List<CameraDescription> _cameras;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // _cameras = await availableCameras();
  final String _randomItem =
      await generateRandomImagePathStringAmongsStringList();
  runApp(AppStarter(randomItem: _randomItem));
  // runApp(AppStarter(cameras: _cameras, randomItem: _randomItem));
}

Future<String> generateRandomImagePathStringAmongsStringList() async {
  List<String> splashItems = [
    "images/splash_images/0.png",
    "images/splash_images/8.png",
    "images/splash_images/9.png",
    "images/splash_images/13.png",
    "images/splash_images/14.png",
    "images/splash_images/15.png",
    "images/splash_images/16.png",
    "images/splash_images/19.png",
    "images/splash_images/21.png",
  ];

  // Create an instance of the Random class
  Random random = Random();

  // Generate a random index within the range of the list
  int randomIndex = random.nextInt(splashItems.length);

  // Get the random item from the list
  String randomItem = splashItems[randomIndex];

  // Print the random item
  print('Random Item: $randomItem');

  return randomItem;
}
