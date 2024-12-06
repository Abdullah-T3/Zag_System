import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zag_system_task1/core/helpers/extantions.dart';
import 'package:zag_system_task1/core/routing/routs.dart';
import 'package:zag_system_task1/core/theming/color.dart';
import 'package:zag_system_task1/core/theming/styles.dart';

class OnbordingscreenWidget extends StatelessWidget {
  const OnbordingscreenWidget({super.key, required this.title, required this.description, required this.image});
  final String title;
  final String description;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20.w, 10.h, 20.w, 10.h),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                  onPressed: () {
                    context.pushNamed(Routes.signUpScreen);
                  },
                  style: TextButton.styleFrom(foregroundColor: ColorsManager.primaryColor),
                  child: const Text(
                    'Skip',
                  ))
            ],
          ),
          SizedBox(
            height: 120.w,
          ),
          Image.asset(image),
          SizedBox(
            height: 20.w,
          ),
          Text(
            title,
            style: TextStyles.font20blackBold,
          ),
          SizedBox(
            height: 10.w,
          ),
          Text(
            description,
            style: TextStyles.font15blackregular,
          ),
          const Spacer(),
          Container(
            width: 300.w,
            height: 50.w,
            decoration: BoxDecoration(color: ColorsManager.primaryColor, borderRadius: BorderRadius.circular(20.r)),
            child: MaterialButton(
              onPressed: () {
                context.pushNamed(Routes.signUpScreen);
              },
              child: Text('Login', style: TextStyles.font20whiteMedium),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          RichText(
            text: TextSpan(
              text: 'Already have an account? ',
              style: TextStyle(color: Colors.black, fontSize: 15.sp),
              children: [
                TextSpan(
                    text: 'Login',
                    style: TextStyle(color: Colors.blue, fontSize: 15.sp),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        print('Navigates to Login Screen');
                      }),
              ],
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          RichText(
            text: TextSpan(text: 'Forgot your password? ', style: TextStyle(color: Colors.black, fontSize: 15.sp), children: [
              TextSpan(
                text: 'Reset',
                style: TextStyle(color: Colors.blue, fontSize: 15.sp),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    print('Navigates to Reset Password Screen');
                  },
              ),
            ]),
          ),
          SizedBox(
            height: 10.h,
          )
        ],
      ),
    );
  }
}
