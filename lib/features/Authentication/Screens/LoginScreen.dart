import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zag_system_task1/core/helpers/extantions.dart';

import '../../../core/routing/routs.dart';
import '../Widgets/AuthenticationTextFieldWidget.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(

        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsetsDirectional.only(top: 65.h),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Text("Login",style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold),),



                Container(
                  width: 300.w,
                  margin: EdgeInsetsDirectional.only(top: 20.h),
                  child: AuthenticationTextFieldWidget(title: 'Email'),
                ),

                Container(
                  width: 300.w,
                  margin: EdgeInsetsDirectional.only(top: 20.h),
                  child: AuthenticationTextFieldWidget(title: 'Password',isPassword: true,),
                ),


                Container(
                  width: 300.w,
                  height: 50.h,
                  margin: EdgeInsetsDirectional.only(top: 50.h),
                  child: ElevatedButton(
                      style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Color(0XFFF1C0F44))),
                      onPressed: (){

                        context.pushReplacementNamed(Routes.homePage);

                      }, child: Text('Create Account',style: TextStyle(color: Colors.white,fontSize: 15.sp),)),
                ),

                SizedBox(
                  height: 20.h,
                ),
                RichText(text: TextSpan(
                    text: 'Create an Account? ',
                    style: TextStyle(color: Colors.black,fontSize: 15.sp),
                    children: [
                      TextSpan(
                          text: 'Sign Up',
                          style: TextStyle(color: Colors.blue,fontSize: 15.sp),
                          recognizer: TapGestureRecognizer()..onTap = (){
                            context.pushReplacementNamed(Routes.SignUpScreen);
                          }
                      )
                    ]
                )),

                SizedBox(
                  height: 8.h,
                ),

                RichText(text: TextSpan(
                    text: 'Forgot your password? ',
                    style: TextStyle(color: Colors.black,fontSize: 15.sp),
                    children: [
                      TextSpan(
                        text: 'Reset',
                        style: TextStyle(color: Colors.blue,fontSize: 15.sp),
                        recognizer: TapGestureRecognizer()..onTap = (){
                          context.pushReplacementNamed(Routes.ForgotPassScreen);
                        },
                      )
                    ]
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }


}