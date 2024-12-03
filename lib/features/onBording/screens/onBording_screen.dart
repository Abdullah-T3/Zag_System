import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zag_system_task1/core/theming/color.dart';
import 'package:zag_system_task1/features/onBording/screens/onbording_findGreateWork.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:zag_system_task1/features/onBording/screens/onbording_second_screen.dart';
import 'package:zag_system_task1/features/onBording/screens/onbording_third_screen.dart';

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
                OnbordingFindgreatework(),
                OnbordingSecondScreen(),
                OnbordingThirdScreen(),
              ],
            ),
            Positioned(
              bottom: 140.h,
              left: 165.w,
              child: SizedBox(
                height: 40.h,
                width: 40.w,
                child: SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: const ExpandingDotsEffect(
                    dotColor: ColorsManager.dotColor,
                    activeDotColor: ColorsManager.buttonColor,
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
