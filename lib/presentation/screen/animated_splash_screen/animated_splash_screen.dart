import 'dart:math';

import 'package:additives/presentation/screen/main/main.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:camera_platform_interface/src/types/camera_description.dart';
import 'package:flutter/material.dart';

class MainAnimatedSplashScreen extends StatefulWidget {
  final List<CameraDescription> cameras;
  final String randomItem;

  const MainAnimatedSplashScreen(
      {Key? key, required this.cameras, required this.randomItem})
      : super(key: key);

  @override
  State<MainAnimatedSplashScreen> createState() =>
      _MainAnimatedSplashScreenState();
}

class _MainAnimatedSplashScreenState extends State<MainAnimatedSplashScreen> {
  // late String randomItem;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // generateRandomImagePathStringAmongsStringList();
// context.read<ShuffleCubit>().getTheDataSetAtFirst();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 2000,
      // splash: AppPaths.splashScreen,
      splash: widget.randomItem,
      // splash: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       ...widget.openingString.split("\n").map((e) => Text(
      //             e.trim(),
      //             style: Theme.of(context)
      //                 .textTheme
      //                 .headlineLarge!
      //                 .copyWith(fontWeight: FontWeight.w400),
      //           )),
      //     ],
      //   ),
      // ),
      // TODO: splash ekrani ozel animasyon yada resim
      nextScreen: MainScreen(cameras: widget.cameras),
      // splashIconSize: MediaQuery.of(context).size.width,
      splashTransition: SplashTransition.fadeTransition,
      // backgroundColor: CevappColors.backgroundColor,
    );
  }


}
