import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:zag_system_task1/core/theming/color.dart';
import '../widgets/onBoarding_widget.dart';

// ignore: must_be_immutable
class OnbordingScreen extends StatelessWidget {
  OnbordingScreen({super.key});
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              controller: _controller,
              children: const [
                OnbordingscreenWidget(
                  title: "Find Great Work",
                  description: "small description here about title and explain the app feature in small sentence",
                  image: "assets/images/onbording_1.png",
                ),
                OnbordingscreenWidget(
                  title: "Find opportunities for every stage of your freelance",
                  description: "small description here about title and explain the app feature in small sentence",
                  image: "assets/images/onbording_2.png",
                ),
                OnbordingscreenWidget(
                  title: "Contact the company automatically",
                  description: "small description here about title and explain the app feature in small sentence",
                  image: "assets/images/onbording_3.png",
                ),
              ],
            ),
            Positioned(
              bottom: 150.h,
              left: 375 / 2.w,
              child: SizedBox(
                height: 40.h,
                width: 40.w,
                child: SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: const WormEffect(
                    dotColor: Colors.grey,
                    activeDotColor: ColorsManager.primaryColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
