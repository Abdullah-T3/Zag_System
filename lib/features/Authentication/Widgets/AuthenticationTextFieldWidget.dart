import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthenticationTextFieldWidget extends StatefulWidget {
  String Title;
  bool isPassword;

  AuthenticationTextFieldWidget({super.key,this.isPassword = false,required this.Title});

  @override
  State<AuthenticationTextFieldWidget> createState() => _AuthenticationTextFieldWidgetState();
}

class _AuthenticationTextFieldWidgetState extends State<AuthenticationTextFieldWidget> {

  bool PassInvisible = true;

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.Title,style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.bold),),
        TextField(

          decoration: InputDecoration(
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.w),

            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.w),
            ),
            suffixIcon: widget.isPassword ?
            IconButton(
              icon: Icon(PassInvisible ? Icons.visibility : Icons.visibility_off),
              onPressed: () {
              setState(() {
                PassInvisible = !PassInvisible;
              });

              },)
                : null ,
        ),

          obscureText: widget.isPassword ? PassInvisible : false,

        ),
      ],
    );
  }
}