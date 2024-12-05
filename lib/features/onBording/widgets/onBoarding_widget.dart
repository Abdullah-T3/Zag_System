import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zag_system_task1/core/helpers/extantions.dart';
import 'package:zag_system_task1/core/routing/routs.dart';
import 'package:zag_system_task1/core/theming/color.dart';
import 'package:zag_system_task1/core/theming/styles.dart';

class OnbordingscreenWidget extends StatelessWidget {
   const OnbordingscreenWidget({super.key, required this.title, required this.description, required this.image});
  final String title;
  final String description ;
  final String image ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20.w, 10.h, 20.w, 10.h),
      child: Column(
        children: [
          Text(
            'Put Logo here',
            style: TextStyles.font20blackregular,
          ),
          SizedBox(
            height: 140.w,
          ),
          Image.asset('assets/images/onbording_2.png'),
          SizedBox(
            height: 30.w,
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
                context.pushNamed(Routes.SignUpScreen);
              },
              child: Text('Login', style: TextStyles.font20whiteMedium),
            ),
          ),
          SizedBox(
            height: 20.w,
          )
        ],
      ),
    );
  }
}
