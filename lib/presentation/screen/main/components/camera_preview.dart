import 'dart:io';
import 'dart:typed_data';

import 'package:additives/data/data.dart';
import 'package:additives/model/additive.dart';
import 'package:additives/presentation/screen/main/components/text_detector_painter.dart';
import 'package:camera/camera.dart';
import 'package:crop_your_image/crop_your_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';

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
      appBar: AppBar(
          title: const Text('Lutfen Urunun Icindekiler Kismini Cekiniz')),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 40.sp,
          ),
          FloatingActionButton.large(
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
                      imageXFile: image,
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
          FloatingActionButton.small(
            // Provide an onPressed callback.
            onPressed: _uploadImage,
            child: const Icon(Icons.photo_size_select_actual_rounded),
          ),
        ],
      ),
    );
  }

  Future<void> _uploadImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    // if (pickedFile != null) {
    //   setState(() {
    //     widget.pickedFile = pickedFile;
    //   });
    // }
    if (pickedFile != null) {
      if (!mounted) return;
      await Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => DisplayPictureScreen(
          // Pass the automatically generated path to
          // the DisplayPictureScreen widget.
          imagePath: pickedFile!.path,
          imageXFile: pickedFile,
        ),
      ));
    }
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
  final XFile imageXFile;

  const DisplayPictureScreen(
      {super.key, required this.imagePath, required this.imageXFile});

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
    // _processImage(InputImage.fromFile(File(widget.imagePath)));
  }

  @override
  Widget build(BuildContext context) {
    return ProcessTakenImageScreen(
      title: 'Duzenleme Ekrani',
      pickedFile: widget.imageXFile,
    );
    // return Scaffold(
    //   appBar: AppBar(title: const Text('Urun Resmi')),
    //   // The image is stored as a file on the device. Use the `Image.file`
    //   // constructor with the given path to display the image.
    //   body: Column(
    //     children: [
    //       // Image.file(File(widget.imagePath)),
    //       // Crop(
    //       //     image: widget.imageBytes,
    //       //     controller: _controller,
    //       //     onCropped: (image) {
    //       //       // do something with image data
    //       //     },
    //       //     aspectRatio: 4 / 3,
    //       //     // initialSize: 0.5,
    //       //     // initialArea: Rect.fromLTWH(240, 212, 800, 600),
    //       //     initialAreaBuilder: (rect) => Rect.fromLTRB(rect.left + 24,
    //       //         rect.top + 32, rect.right - 24, rect.bottom - 32),
    //       //     // withCircleUi: true,
    //       //     baseColor: Colors.blue.shade900,
    //       //     maskColor: Colors.white.withAlpha(100),
    //       //     radius: 20,
    //       //     onMoved: (newRect) {
    //       //       // do something with current cropping area.
    //       //     },
    //       //     onStatusChanged: (status) {
    //       //       // do something with current CropStatus
    //       //     }
    //       //     // cornerDotBuilder: (size, edgeAlignment) => const DotControl(color: Colors.blue),
    //       //     // interactive: true,
    //       //     // fixArea: true,
    //       //     ),
    //       // _body(),
    //       Center(
    //         child: Row(
    //           mainAxisSize: MainAxisSize.min,
    //           children: [
    //             IconButton(
    //               onPressed: () {
    //                 Navigator.pop(context);
    //               },
    //               icon: const Icon(Icons.cancel),
    //               color: Colors.red,
    //               iconSize: 40,
    //             ),
    //             IconButton.filledTonal(
    //               onPressed: () {
    //                 Navigator.pop(context);
    //               },
    //               icon: const Icon(Icons.check_circle),
    //               color: Colors.green,
    //               iconSize: 40,
    //             ),
    //           ],
    //         ),
    //       )
    //     ],
    //   ),
    // );
  }

// Future<void> _processImage(InputImage inputImage) async {
//   if (!_canProcess) return;
//   if (_isBusy) return;
//   _isBusy = true;
//   setState(() {
//     _text = '';
//   });
//   final recognizedText = await _textRecognizer.processImage(inputImage);
//   debugPrint("Recognized text: ${recognizedText.text}");
//   if (inputImage.metadata?.size != null &&
//       inputImage.metadata?.rotation != null) {
//     final painter = TextRecognizerPainter(
//       recognizedText,
//       inputImage.metadata!.size,
//       inputImage.metadata!.rotation,
//       _cameraLensDirection,
//     );
//     _customPaint = CustomPaint(painter: painter);
//   } else {
//     _text = 'Recognized text:\n\n${recognizedText.text}';
//     // TODO: set _customPaint to draw boundingRect on top of image
//     _customPaint = null;
//   }
//   _isBusy = false;
//   if (mounted) {
//     setState(() {});
//   }
// }
}

class ProcessTakenImageScreen extends StatefulWidget {
  final String title;

  ProcessTakenImageScreen(
      {Key? key, required this.title, required this.pickedFile})
      : super(key: key);
  XFile? pickedFile;

  @override
  _ProcessTakenImageScreenState createState() =>
      _ProcessTakenImageScreenState();
}

class _ProcessTakenImageScreenState extends State<ProcessTakenImageScreen> {
  // XFile? _pickedFile;
  final _script = TextRecognitionScript.latin;
  final _textRecognizer = TextRecognizer(script: TextRecognitionScript.latin);
  final bool _canProcess = true;
  bool _isBusy = false;
  CustomPaint? _customPaint;
  String? _text;
  final _cameraLensDirection = CameraLensDirection.back;
  CroppedFile? _croppedFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: !kIsWeb ? AppBar(title: Text(widget.title)) : null,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (kIsWeb)
            Padding(
              padding: const EdgeInsets.all(kIsWeb ? 24.0 : 16.0),
              child: Text(
                widget.title,
                style: Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(color: Theme.of(context).highlightColor),
              ),
            ),
          Expanded(child: _body()),
        ],
      ),
      floatingActionButton: FloatingActionButton.large(
          onPressed: () => runTextRecognition(
              inputImage: InputImage.fromFilePath(_croppedFile == null
                  ? widget.pickedFile!.path
                  : _croppedFile!.path)),
          child: const Icon(Icons.check)),
    );
  }

  Widget _body() {
    if (_croppedFile != null || widget.pickedFile != null) {
      return _imageCard();
    } else {
      return const Center(child: CircularProgressIndicator());
    }
  }

  Widget _imageCard() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: kIsWeb ? 24.0.sp : 16.0.sp),
            child: Card(
              elevation: 8.0,
              child: _image(),
            ),
          ),
          SizedBox(height: 24.0.sp),
          _menu(),
        ],
      ),
    );
  }

  Widget _image() {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    if (_croppedFile != null) {
      final path = _croppedFile!.path;
      return ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 0.8 * screenWidth,
          maxHeight: 0.7 * screenHeight,
        ),
        child: kIsWeb ? Image.network(path) : Image.file(File(path)),
      );
    } else if (widget.pickedFile != null) {
      final path = widget.pickedFile!.path;
      return ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 0.8 * screenWidth,
          maxHeight: 0.7 * screenHeight,
        ),
        child: kIsWeb ? Image.network(path) : Image.file(File(path)),
      );
    } else {
      return const SizedBox.shrink();
    }
  }

  Widget _menu() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        FloatingActionButton(
          onPressed: () {
            _clear();
          },
          backgroundColor: Colors.redAccent.shade200,
          tooltip: 'Delete',
          child: const Icon(Icons.delete),
        ),
        // if (_croppedFile == null)
        Padding(
          padding: const EdgeInsets.only(left: 32.0),
          child: FloatingActionButton(
            onPressed: () {
              _cropImage();
            },
            backgroundColor: Colors.grey.shade300,
            tooltip: 'Crop',
            child: const Icon(Icons.crop),
          ),
        )
      ],
    );
  }

  Future<void> _cropImage() async {
    if (widget.pickedFile != null) {
      final croppedFile = await ImageCropper().cropImage(
        sourcePath: widget.pickedFile!.path,
        compressFormat: ImageCompressFormat.jpg,
        compressQuality: 100,
        uiSettings: [
          AndroidUiSettings(
              toolbarTitle: 'Kirpma Ekrani',
              // toolbarColor: Colors.deepOrange,
              // toolbarWidgetColor: Colors.white,
              initAspectRatio: CropAspectRatioPreset.original,
              lockAspectRatio: false),
          IOSUiSettings(
            title: 'Kirpma Ekrani',
          ),
          WebUiSettings(
            context: context,
            presentStyle: CropperPresentStyle.dialog,
            boundary: const CroppieBoundary(
              width: 520,
              height: 520,
            ),
            viewPort:
                const CroppieViewPort(width: 480, height: 480, type: 'circle'),
            enableExif: true,
            enableZoom: true,
            showZoomer: true,
          ),
        ],
      );
      if (croppedFile != null) {
        setState(() {
          _croppedFile = croppedFile;
        });
      }
    }
  }

  void _clear() {
    setState(() {
      widget.pickedFile = null;
      _croppedFile = null;
    });
    Navigator.of(context).pop();
  }

  Future<String> _processImage(InputImage inputImage) async {
    if (!_canProcess) return "CANNOT";
    if (_isBusy) return "BUSY";
    _isBusy = true;
    setState(() {
      _text = '';
    });
    final recognizedText = await _textRecognizer.processImage(inputImage);
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
    return recognizedText.text;
  }

  void runTextRecognition({required InputImage inputImage}) async {
    final String recognizedText = await _processImage(inputImage);
    debugPrint("Recognized text 1: $recognizedText");
    if (!mounted) return;
    showLoadingDialog(context);
    final List<Map<String, dynamic>> foundAdditives =
        await findAdditives(recognizedText: recognizedText);
    if (!mounted) return;
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => DisplayAdditivesPictureScreen(
          additivesList: <Map<String, dynamic>>[],
        ),
      ),
    );
  }

  void showLoadingDialog(BuildContext context) {}

  // (Map<String, dynamic>, int) findMinHammingDistances(String name) {
  int findMinHammingDistances(String name) {
    List<int> hammingDistances = [];

    for (int i = 0; i < additiveMap.length; i++) {
      int hammingDistance = 0;
      String additiveCode = additiveMap[i]["ONLY_NAME"];

      for (int j = 0; j < name.length; j++) {
        try {
          if (additiveCode[j] != name[j]) {
            hammingDistance++;
          }
        } catch (e) {
          int flag = 0;
          if (hammingDistance <= 3) {
            flag = 1;
          } else {
            hammingDistance = 255;
          }
          debugPrint("Error occured | Flag: $flag | Error:$e");
        }
      }

      hammingDistances.add(hammingDistance);
    }

    // Find the minimum hamming distance
    int minHammingDistance = hammingDistances.reduce((a, b) => a < b ? a : b);

    // Find the index of the minimum hamming distance
    int minIndex = hammingDistances.indexOf(minHammingDistance);

    // You may want to do something with the corresponding additive code
    String correspondingAdditiveCode = additiveMap[minIndex]["ONLY_NAME"];

    // You can print or use the corresponding additive code as needed

    return minHammingDistance;
  }

  Future<List<Map<String, dynamic>>> findAdditives(
      {required String recognizedText}) async {
    List<Map<String, dynamic>> foundAdditives = [];

    List<String> splittedText = recognizedText.split(",");
    // trim all elements
    for (int i = 0; i < splittedText.length; i++) {
      splittedText[i] = splittedText[i].trim();
    }
    // print all elements with the minimum hamming distance
    debugPrint("\n\nHamming Distances:");
    for (int i = 0; i < splittedText.length; i++) {
      int hammingDistance = findMinHammingDistances(splittedText[i]);
      debugPrint("- ${splittedText[i]}: $hammingDistance");
    }
    // remove all elements that are not additive
    for (int i = 0; i < splittedText.length; i++) {
      if (splittedText[i].length < 3) {
        splittedText.removeAt(i);
      }
    }
    return foundAdditives;
  }
}

class DisplayAdditivesPictureScreen extends StatefulWidget {
  const DisplayAdditivesPictureScreen({super.key, required this.additivesList});

  final List<Map<String, dynamic>> additivesList;

  @override
  State<DisplayAdditivesPictureScreen> createState() =>
      _DisplayAdditivesPictureScreenState();
}

class _DisplayAdditivesPictureScreenState
    extends State<DisplayAdditivesPictureScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 8.h),
            Text("Urunun Fotografindan \ncikarilan katki maddeleri:",
                maxLines: 2),
            Expanded(
              child: widget.additivesList.isNotEmpty
                  ? ListView.builder(
                      itemCount: widget.additivesList.length,
                      itemBuilder: (context, index) {
                        Map<String, dynamic> foundItem =
                            widget.additivesList[index];

                        Additive additive = Additive(
                          codeAndName: foundItem["CODE_AND_NAME"],
                          code: foundItem["CODE"],
                          additiveCode: foundItem["ADDITIVE_CODE"],
                          onlyCode: foundItem["ONLY_CODE"],
                          health: foundItem["HEALTH"],
                          halal: foundItem["HALAL"],
                          class_: foundItem["CLASS"],
                        );
                        Widget healthWidget = additive.health == "RED"
                            ? const Text(
                                "Zararlı",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.w900),
                              )
                            : const Text(
                                "Zararsız",
                                style: TextStyle(color: Colors.grey),
                              );
                        Widget halalWidget = additive.halal == "NORMAL"
                            ? Text(
                                "Caiz",
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor),
                              )
                            : additive.halal == "VITAL_1"
                                ? Text(
                                    "Şüpheli",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleSmall!
                                        .copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .error
                                              .withOpacity(0.55),
                                          fontWeight: FontWeight.w500,
                                        ),
                                  )
                                : Text(
                                    "Haram",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleSmall!
                                        .copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .error
                                              .withOpacity(0.8),
                                          fontWeight: FontWeight.bold,
                                        ),
                                  );
                        Color cardColor = additive.halal == "NORMAL"
                            ? Colors.green.shade50
                            : additive.halal == "VITAL_1"
                                ? Theme.of(context)
                                    .colorScheme
                                    .error
                                    .withOpacity(0.15)
                                : Theme.of(context)
                                    .colorScheme
                                    .error
                                    .withOpacity(0.8);
                        return Card(
                          key: ValueKey(widget.additivesList[index]),
                          margin: const EdgeInsets.symmetric(vertical: 0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                            side: BorderSide(
                              color: Theme.of(context).colorScheme.onPrimary,
                              width: 0.2,
                            ),
                          ),
                          child: ListTile(
                            tileColor: cardColor,
                            title: Text(additive.codeAndName),
                            trailing: Container(
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.onPrimary,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [healthWidget, halalWidget],
                                ),
                              ),
                            ),
                            subtitle: Text(descriptionAdditive[additive.halal]),
                          ),
                        );
                      },
                    )
                  : const Text(
                      'Kayıt Bulunamadı',
                      style: TextStyle(fontSize: 24),
                    ),
            )
          ],
        ),
      ),
    );
  }
}
