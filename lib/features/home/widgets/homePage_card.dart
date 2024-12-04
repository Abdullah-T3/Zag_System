// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zag_system_task1/core/theming/styles.dart';

class HomepageCard extends StatelessWidget {
  const HomepageCard({
    super.key,
    required this.title,
    required this.description,
    required this.image,
  });
  final String title;
  final String description;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),
      child: Center(
        child: InkWell(
          borderRadius: BorderRadius.circular(20.r),
          splashColor: Colors.grey,
          onTap: () {},
          child: Container(
            height: 100.h,
            width: 350.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: ListTile(
              title: Text(
                title,
                style: TextStyles.font20blackBold,
              ),
              subtitle: Text(
                description,
                style: TextStyles.font15blackregular,
              ),
              leading: Image.asset(
                image,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
