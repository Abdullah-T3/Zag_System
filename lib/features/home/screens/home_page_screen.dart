import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zag_system_task1/features/home/widgets/homePage_card.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        actions: [
          MaterialButton(
            onPressed: () {},
            shape: const CircleBorder(),
            splashColor: Colors.transparent,
            child: Image.asset("assets/images/profile_pic.png"),
          )
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(top: 20.h),
        child: const Column(
          children: [
            HomepageCard(title: "ROBOCUP company", description: "small description here about company. ", image: "assets/images/MICARoboCup.png"),
            HomepageCard(title: "Google company", description: "small description here about company. ", image: "assets/images/google_logo.png"),
            HomepageCard(title: "ROBOCUP company", description: "small description here about company. ", image: "assets/images/mac_logo.png"),
            HomepageCard(title: "ROBOCUP company", description: "small description here about company. ", image: "assets/images/microsoft_logo.png"),
          ],
        ),
      )),
    );
  }
}
