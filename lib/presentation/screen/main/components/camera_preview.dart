import 'dart:io';
import 'dart:typed_data';

import 'package:additives/presentation/screen/main/components/text_detector_painter.dart';
import 'package:camera/camera.dart';
import 'package:crop_your_image/crop_your_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';

/// CameraApp is the Main Application.
class TakePictureScreen extends StatefulWidget {
  const TakePictureScreen({
    super.key,
    required this.camera,
  });

  final CameraDescription camera;

  @override
  TakePictureScreenState createState() => TakePictureScreenState();
}

class TakePictureScreenState extends State<TakePictureScreen> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    // To display the current output from the Camera,
    // create a CameraController.
    _controller = CameraController(
      // Get a specific camera from the list of available cameras.
      widget.camera,
      // Define the resolution to use.
      ResolutionPreset.medium,
    );

    // Next, initialize the controller. This returns a Future.
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    // Dispose of the controller when the widget is disposed.
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Take a picture')),
      // You must wait until the controller is initialized before displaying the
      // camera preview. Use a FutureBuilder to display a loading spinner until the
      // controller has finished initializing.
      body: FutureBuilder<void>(
        future: _initializeControllerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // If the Future is complete, display the preview.
            return CameraPreview(_controller);
          } else {
            // Otherwise, display a loading indicator.
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        // Provide an onPressed callback.
        onPressed: () async {
          // Take the Picture in a try / catch block. If anything goes wrong,
          // catch the error.
          try {
            // Ensure that the camera is initialized.
            await _initializeControllerFuture;

            // Attempt to take a picture and get the file `image`
            // where it was saved.
            final XFile image = await _controller.takePicture();

            if (!mounted) return;

            // File(widget.imagePath).readAsBytes()
            // final Uint8List imageBytes = await _load(image.path);
            if (!mounted) return;

            // If the picture was taken, display it on a new screen.
            await Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => DisplayPictureScreen(
                  // Pass the automatically generated path to
                  // the DisplayPictureScreen widget.
                  imagePath: image.path,
                  imageBytes: imageBytes,
                ),
              ),
            );
          } catch (e) {
            // If an error occurs, log the error to the console.
            print(e);
          }
        },
        child: const Icon(Icons.camera_alt),
      ),
    );
  }
  // Future<Uint8List> _load(String assetName) async {
  //   try {
  //     final bytes = await rootBundle.load(assetName);
  //     return bytes.buffer.asUint8List();
  //   } catch (e) {
  //     // If we fail, we should just throw an error.
  //     throw 'Unable to load asset: $assetName';
  //   }
  // }
}

// A widget that displays the picture taken by the user.
class DisplayPictureScreen extends StatefulWidget {
  final String imagePath;
  final Uint8List imageBytes;

  const DisplayPictureScreen(
      {super.key, required this.imagePath, required this.imageBytes});

  @override
  State<DisplayPictureScreen> createState() => _DisplayPictureScreenState();
}

class _DisplayPictureScreenState extends State<DisplayPictureScreen> {
  final _script = TextRecognitionScript.latin;
  final _textRecognizer = TextRecognizer(script: TextRecognitionScript.latin);
  final bool _canProcess = true;
  bool _isBusy = false;
  CustomPaint? _customPaint;
  String? _text;
  final _cameraLensDirection = CameraLensDirection.back;
  final _controller = CropController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _processImage(InputImage.fromFile(File(widget.imagePath)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Urun Resmi')),
      // The image is stored as a file on the device. Use the `Image.file`
      // constructor with the given path to display the image.
      body: Column(
        children: [
          // Image.file(File(widget.imagePath)),
          Crop(
              image: widget.imageBytes,
              controller: _controller,
              onCropped: (image) {
                // do something with image data
              },
              aspectRatio: 4 / 3,
              // initialSize: 0.5,
              // initialArea: Rect.fromLTWH(240, 212, 800, 600),
              initialAreaBuilder: (rect) => Rect.fromLTRB(rect.left + 24,
                  rect.top + 32, rect.right - 24, rect.bottom - 32),
              // withCircleUi: true,
              baseColor: Colors.blue.shade900,
              maskColor: Colors.white.withAlpha(100),
              radius: 20,
              onMoved: (newRect) {
                // do something with current cropping area.
              },
              onStatusChanged: (status) {
                // do something with current CropStatus
              }
              // cornerDotBuilder: (size, edgeAlignment) => const DotControl(color: Colors.blue),
              // interactive: true,
              // fixArea: true,
              ),
          Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.cancel),
                  color: Colors.red,
                  iconSize: 40,
                ),
                IconButton.filledTonal(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.check_circle),
                  color: Colors.green,
                  iconSize: 40,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Future<void> _processImage(InputImage inputImage) async {
    if (!_canProcess) return;
    if (_isBusy) return;
    _isBusy = true;
    setState(() {
      _text = '';
    });
    final recognizedText = await _textRecognizer.processImage(inputImage);
    debugPrint("Recognized text: ${recognizedText.text}");
    if (inputImage.metadata?.size != null &&
        inputImage.metadata?.rotation != null) {
      final painter = TextRecognizerPainter(
        recognizedText,
        inputImage.metadata!.size,
        inputImage.metadata!.rotation,
        _cameraLensDirection,
      );
      _customPaint = CustomPaint(painter: painter);
    } else {
      _text = 'Recognized text:\n\n${recognizedText.text}';
      // TODO: set _customPaint to draw boundingRect on top of image
      _customPaint = null;
    }
    _isBusy = false;
    if (mounted) {
      setState(() {});
    }
  }
}
