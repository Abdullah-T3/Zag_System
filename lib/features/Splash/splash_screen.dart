import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zag_system_task1/core/helpers/extantions.dart';

import '../../core/routing/routs.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 2), () {
      // ignore: use_build_context_synchronously
      context.pushNamed(Routes.onBordingScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xff1C0F44),
            Color(0xff401528)
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: const Center(
            child: Text(
          "Put logo here",
          style: TextStyle(color: Colors.white, fontSize: 30),
        )),
      ),
    );
  }
}
