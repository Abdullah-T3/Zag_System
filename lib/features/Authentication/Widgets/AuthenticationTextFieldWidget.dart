import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class AuthenticationTextFieldWidget extends StatefulWidget {
  String title;
  bool isPassword;

  AuthenticationTextFieldWidget({super.key, this.isPassword = false, required this.title});

  @override
  State<AuthenticationTextFieldWidget> createState() => _AuthenticationTextFieldWidgetState();
}

class _AuthenticationTextFieldWidgetState extends State<AuthenticationTextFieldWidget> {
  bool passInvisible = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.bold),
        ),
        TextField(
          decoration: InputDecoration(
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.w),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.w),
            ),
            suffixIcon: widget.isPassword
                ? IconButton(
                    icon: Icon(passInvisible ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        passInvisible = !passInvisible;
                      });
                    },
                  )
                : null,
          ),
          textInputAction: TextInputAction.next,
          obscureText: widget.isPassword ? passInvisible : false,
        ),
      ],
    );
  }
}
