import 'package:flutter/material.dart';
import 'package:wallet/presentation/screen/landing/components/landing_common_body.dart';

class Landing2Screen extends StatefulWidget {
  const Landing2Screen({super.key});

  @override
  State<Landing2Screen> createState() => _Landing2ScreenState();
}

class _Landing2ScreenState extends State<Landing2Screen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LandingCommonBody(),
    );
  }
}
