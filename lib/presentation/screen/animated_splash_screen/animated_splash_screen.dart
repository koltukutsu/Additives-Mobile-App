import 'dart:math';

import 'package:additives/presentation/screen/main/main.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:camera_platform_interface/src/types/camera_description.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

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
      duration: 3500,
      // splash: AppPaths.splashScreen,
      // splash: widget.randomItem,
      splash: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(widget.randomItem),
            SizedBox(height: 6.h,),
            Text(
              "Şurası muhakkak ki, haramlar apaçık bellidir,\nhelaller de apaçık bellidir.",
              maxLines: 3,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontWeight: FontWeight.w500),
            ),
            Text(
              "Hadis-i Şerif, Buhari",
              maxLines: 3,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontWeight: FontWeight.w300),
            )
          ],
        ),
      ),
      // TODO: splash ekrani ozel animasyon yada resim
      nextScreen: MainScreen(cameras: widget.cameras),
      splashIconSize: MediaQuery.of(context).size.width,
      splashTransition: SplashTransition.fadeTransition,
      // backgroundColor: CevappColors.backgroundColor,
    );
  }
}
