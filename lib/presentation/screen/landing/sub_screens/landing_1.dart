import 'package:flutter/material.dart';
import 'package:wallet/presentation/screen/landing/components/landing_common_body.dart';

class Landing1Screen extends StatefulWidget {
  const Landing1Screen({super.key});

  @override
  State<Landing1Screen> createState() => _Landing1ScreenState();
}

class _Landing1ScreenState extends State<Landing1Screen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LandingCommonBody(),
    );
  }
}
